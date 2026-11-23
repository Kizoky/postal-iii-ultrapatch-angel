// Difficulty system
// TODO: probably add cvars
#include "difficulty/npcmaker.as"


//array<string> diff_maps;

[HIDDEN]
class CDifficulty : IPostal3Script
{
	//CP3SObj@ self;
	//CDifficulty(CP3SObj@ obj)
	//{
	//	@self = @obj;
	//}

	// Pain confirmed
	array<string> bigGuns =
	{
		"p3_weapon_m60",
		"p3_weapon_m249"
	};
	
	array<string> s_Guns =
	{
		"p3_weapon_autoshotgun",
		"p3_weapon_colt",
		"p3_weapon_deserteagle",
		"p3_weapon_m16",
		//"p3_weapon_m60",
		//"p3_weapon_m249",
		"p3_weapon_shotgun",
		"p3_weapon_sniper",
		
		// experimental (causes NPCs to t-pose and not throw anything)
		//"p3_weapon_beenest",
		//"p3_weapon_crotchy_grenade",
		//"p3_weapon_grenade",
		//"p3_weapon_molotov",
		//"p3_weapon_teargas"
	};
	
	array<string> s_MeleeWeps =
	{
		//"p3_weapon_banner",
		"p3_weapon_cop_baton",
		"p3_weapon_fireaxe",
		"p3_weapon_hammer",
		"p3_weapon_machete",
		"p3_weapon_nailbat",
		"p3_weapon_shovel",
		"p3_weapon_wolverine"
	};
	
	// Deal less damage according to difficulty
	void ScaleDamageDown(CTakeDamageInfo&in info)
	{
		int diff = GetDifficulty();
		switch (diff)
		{
			// Entities take more damage the higher the difficulty is
			case DIFF_JOURNALIST: info.ScaleDamage(0.50f); break;
			case DIFF_EASY: info.ScaleDamage(0.75f); break;
			
			default: break;
		}
	}
	
	// Deal more damage according to difficulty
	void ScaleDamageUp(CTakeDamageInfo&in info)
	{
		int diff = GetDifficulty();
		switch (diff)
		{
			// Entities take more damage the lower the difficulty is
			case DIFF_JOURNALIST: info.ScaleDamage(1.50f); break;
			case DIFF_EASY: info.ScaleDamage(1.25f); break;
			
			default: break;
		}
	}

	[HOOK Player OnTakeDamage GLOBAL]
	CTakeDamageInfo OnPlayerTakeDamage(const CTakeDamageInfo&in info)
	{	
		CTakeDamageInfo newInfo(info);
		
		if ((newInfo.GetDamageType() & (DMG_DROWN | DMG_CRUSH | DMG_FALL | DMG_POISON | DMG_SNIPER)) != 0)
		{
			// Skill level doesn't affect these types of damage.
			return newInfo;
		}
		
		ScaleDamageDown(newInfo);
		
		return newInfo;
	}
	
	[HOOK NPC OnTakeDamage GLOBAL]
	CTakeDamageInfo OnNPCTakeDamage(const CTakeDamageInfo&in info)
	{
		CTakeDamageInfo newInfo(info);
		
		if ((newInfo.GetDamageType() & (DMG_DROWN | DMG_CRUSH | DMG_FALL | DMG_POISON | DMG_SNIPER)) != 0)
		{
			// Skill level doesn't affect these types of damage.
			return newInfo;
		}
		
		bool hatesPlayer = false;
		bool escort = false;
		
		CP3SObj@ self = GetContextCaller();
		if (@self != @null)
		{
			if (self.HasAttr("ea_escort"))
			{
				escort = true;
			}
			
			// TODO: Check for all players
			CP3SObj@ player = GetPlayer();
		
			// Hostile towards player
			if (self.IsHate(player))
			{
				hatesPlayer = true;
			}
		}
		
		if (hatesPlayer && escort)
		{
			// harder skill difficulty or bug? can't tell
		}
		
		if (hatesPlayer)
		{
			ScaleDamageUp(newInfo);
		}
		else if (escort)
		{
			ScaleDamageDown(newInfo);
		}
		
		return newInfo;
	}
	
	//[HOOK SEngine OnEntitySpawn]
	//void OnEntitySpawn(CBaseEntity@ pEnt)
	//{
	//	// NPCs only
	//	if (FClassnameIs(pEnt, "p3_npc_*") == false)
	//		return;
	//		
	//	
	//}
	
	// Also equips it automatically
	bool GiveRandomWeapon(array<string>@ strList, CBaseCombatCharacter@ pBCC)
	{
		// TODO: Could use some model check here....
		
		int RNG = RandomInt(0, strList.length()-1);
		
		CBaseCombatWeapon@ pWeapon = pBCC.Weapon_Create(strList[RNG]);
		if (  pBCC.Weapon_Equip( pWeapon ) )
		{
			if ( pBCC.Weapon_Switch( pWeapon ) )
			{
				return true;
			}
		}
		
		return false;
	}
	
	// Force NPCs to hate the Player or otherwise give them stuff
	[HOOK NPC OnFSMStart GLOBAL]
	void OnFSMStart()
	{
		// Only Masochist and higher difficulties modify NPCs on the fly
		if (GetDifficulty() < DIFF_MASOCHIST)
			return;
		
		CP3SObj@ self = GetContextCaller();
		if (@self == @null)
			return;
			
		// Don't reapply, will break things otherwise
		if (self.HasAttr("diff_applied"))
			return;
			
		self.SetAttr("diff_applied", 1);
		
		// Just to be extra sure...
		if (!self.IsNPC())
			return;
		
		// TODO: Check for all players
		// check for all enemies or relationships? but how?
		CP3SObj@ player = GetPlayer();
		if (@player == @null)
			return;
			
		CBaseEntity@ ent = self.GetBaseEntity();
		if (@ent == @null)
			return;
			
		CBaseCombatCharacter@ pBCC = ent.MyCombatCharacterPointer();
		if (@pBCC == @null)
			return;
			
		// "Enemy will now carry random big guns"
		if (self.IsHate(player))
		{
			if (!self.IsAnimal())
			{
				if (!GiveRandomWeapon(bigGuns, pBCC))
					Warning("Failed to give weapon for Player hater '%s'\n", ent.GetName());
			}
		}
		// "Citizens have weapons"
		else
		{	
			if (!self.IsAnimal())
			{
				bool bResult = false;
				if (RandomInt(0,1) == 0)
				{
					bResult = GiveRandomWeapon(s_Guns, pBCC);
				}
				else
				{
					bResult = GiveRandomWeapon(s_MeleeWeps, pBCC);
				}
				
				if (!bResult)
				{
					Warning("Failed to give weapon for 'Citizen' '%s'!!\n", ent.GetName());
				}
			}
			
			// Force everyone to attack ONLY on They All Hate Me and higher
			if (GetDifficulty() > DIFF_WHACKJOB)
			{
				self.SetEnemy(player);
				self.Relationship(player, D_HT, 5);
			}
		}
		
	}
	
	// Modify some spawners that spawn Hostile NPCs in on higher difficulties
	[HOOK SEngine LevelInitComplete]
	void AdjustNPCSpawnRates()
	{
		// Only Masochist and higher difficulties adjust makers
		if (GetDifficulty() < DIFF_MASOCHIST)
			return;
		
		// Only transitions or new game
		if ((gpGlobals.eLoadType == MapLoad_Transition || gpGlobals.eLoadType == MapLoad_NewGame) == false)
			return;
			
		string mapname = gpGlobals.mapname;
		mapname.toLower();
		
		// Prepath
		if (mapname == "pw")
		{
			MultiplyMakerSpawnRate("moms_spwn", 2);
			MultiplyMakerSpawnRate("moms_spwn2", 2);
		}
		if (mapname == "dcr")
		{
			MultiplyMakerSpawnRate("npc_spawner_sushi_r", 2);
			MultiplyMakerSpawnRate("npc_spawner_sushi_m", 2);
		}
		if (mapname == "jwb")
		{
			MultiplyMakerSpawnRate("CopSpawner", 2);
		}
		if (mapname == "cm")
		{
			MultiplyMakerSpawnRate("spawner_police", 2);
			MultiplyMakerSpawnRate("spawner_police1", 2);
			MultiplyMakerSpawnRate("spawner_badger", 2);
			MultiplyMakerSpawnRate("spawner_helicopter", 2);
			MultiplyMakerSpawnRate("spawner_swat", 2);
			MultiplyMakerSpawnRate("spawner_swat_rappel", 2);
			
			// TODO: OnPlayerSideChange hook?
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("spawner_zealots*", 2);
			}
		}
		
		//// Considered ""Prepath"" technically
		if (mapname == "aa" || mapname == "aa1")
		{
			MultiplyMakerSpawnRate("cop_spawner", 2);
			
			F_MultiplyMakerSpawnRate("spawner_invaders*", 2);
		}
		if (mapname == "aa2")
		{
			MultiplyMakerSpawnRate("spawner_invaders", 2);
			
			// :)
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("hugo_spawner", 2);
			}
		}
		
		// Good path
		if (mapname == "pa")
		{
			F_MultiplyMakerSpawnRate("hobo_spawner*", 2);
			F_MultiplyMakerSpawnRate("cop_spawner*", 2);
		}
		if (mapname == "pm1")
		{
			// Probably wouldn't be a good idea to multiply spawners here
		}
		if (mapname == "sub")
		{
			F_MultiplyMakerSpawnRate("nerd_spawner*", 2);
			
			// :)
			if (GetDifficulty() >= DIFF_DEMON)
			{
				CloneNPCAndSpawn("npc_uwe", "p3_npc_citizen");
			}
		}
		if (mapname == "as")
		{
			F_MultiplyMakerSpawnRate("mom_spawner*", 2);
		}
		if (mapname == "hi")
		{
			F_MultiplyMakerSpawnRate("spawner_talib*", 2);
		}
		if (mapname == "mlg")
		{
			F_MultiplyMakerSpawnRate("spawner_scientists*", 2);
			F_MultiplyMakerSpawnRate("spawner_scientists2*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_zealots", 2);
			}
			
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("spawner_rhino", 2);
			}
		}
		if (mapname == "pm2")
		{
			//
		}
		if (mapname == "zhqa")
		{
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("spawner_algore", 2);
			}
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_swat", 2);
			}
			
			F_MultiplyMakerSpawnRate("spawner_ranged*", 2);
			F_MultiplyMakerSpawnRate("spawner_melee*", 2);
			MultiplyMakerSpawnRate("spawner_house", 2);
			MultiplyMakerSpawnRate("spawner_approach", 2);
			MultiplyMakerSpawnRate("spawner_apples", 2);
		}
		if (mapname == "grg")
		{
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("spawner_ronjeremy", 2);
			}
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_spectators", 2);
				MultiplyMakerSpawnRate("spawner_citizen", 2);
			}
			
			MultiplyMakerSpawnRate("spawner_zealot", 2);
		}
		if (mapname == "mc")
		{
			MultiplyMakerSpawnRate("spawner_talib", 2);
			
			// TODO: multiple the riders?
		}
		if (mapname == "dlg")
		{
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("boss_dave_spawner", 2);
				MultiplyMakerSpawnRate("boss_osama_spawner", 2);
				MultiplyMakerSpawnRate("boss_ron_spawner", 2);
			}
			
			F_MultiplyMakerSpawnRate("mom_spawner*", 2);
			F_MultiplyMakerSpawnRate("talib_spawner*", 2);
			F_MultiplyMakerSpawnRate("gay_spawner*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("civil_prespawner*", 2);
				F_MultiplyMakerSpawnRate("civil_spawner*", 2);
			}
		}
		
		///// Evil/Insane path
		if (mapname == "mtz")
		{
			F_MultiplyMakerSpawnRate("spvn_taliban*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("spvn_zealot*", 2);
				MultiplyMakerSpawnRate("spvn_balcony_zel", 2);
			}
		}
		if (mapname == "cw")
		{
			MultiplyMakerSpawnRate("sushi_spawner", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				// 						sic
				MultiplyMakerSpawnRate("vistior_spawner", 2);
			}
		}
		if (mapname == "srm")
		{
			MultiplyMakerSpawnRate("spawner_cop", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("spawner_citizen_*", 2);
			}
		}
		if (mapname == "sbe")
		{
			F_MultiplyMakerSpawnRate("paparazzi_*", 2);
			
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("boss_spawner", 2);
			}
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("visitor_spawner", 2);
				MultiplyMakerSpawnRate("worker_spawner", 2);
			}
		}
		if (mapname == "mli")
		{
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("spawner_chief", 2);
			}
			
			MultiplyMakerSpawnRate("spawner_police", 2);
			MultiplyMakerSpawnRate("spawner_scientists", 2);
			MultiplyMakerSpawnRate("spawner_scientists2", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_zealots", 2);
			}
		}
		if (mapname == "kmtd")
		{
			MultiplyMakerSpawnRate("spawner_cop", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("spawner_citizen*", 2);
			}
		}
		if (mapname == "mvc")
		{
			MultiplyMakerSpawnRate("spawner_patrol", 2);
			MultiplyMakerSpawnRate("spawner_police2", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("spawner_citizen*", 2);
			}
		}
		if (mapname == "pwac")
		{
			F_MultiplyMakerSpawnRate("cop_spawner*", 2);
			F_MultiplyMakerSpawnRate("swat_spawner*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("prison_spawner*", 2);
			}
		}
		if (mapname == "bdk")
		{
			F_MultiplyMakerSpawnRate("nerd_spawner*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("civil_*", 2);
				MultiplyMakerSpawnRate("shopkeeper_spawner", 2);
			}
			
			if (GetDifficulty() >= DIFF_DEMON)
			{
				CloneNPCAndSpawn("npc_krotchy", "p3_npc_citizen");
			}
		}
		if (mapname == "gri")
		{
			if (GetDifficulty() >= DIFF_DEMON)
			{
				MultiplyMakerSpawnRate("spawner_ronjeremy", 2);
			}
			
			MultiplyMakerSpawnRate("spawner_police", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_citizen", 2);
				MultiplyMakerSpawnRate("spawner_spectators", 2);
				MultiplyMakerSpawnRate("spawner_zealot", 2);
			}
		}
		if (mapname == "crm")
		{
			F_MultiplyMakerSpawnRate("spawner_sushi*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				MultiplyMakerSpawnRate("spawner_bums", 2);
			}
		}
		if (mapname == "dli")
		{
			F_MultiplyMakerSpawnRate("talib_spawner*", 2);
			F_MultiplyMakerSpawnRate("mom_spawner*", 2);
			F_MultiplyMakerSpawnRate("gay_spawner*", 2);
			
			if (GetDifficulty() >= DIFF_THEYHATEME)
			{
				F_MultiplyMakerSpawnRate("civil_*", 2);
			}
		}
	}
}