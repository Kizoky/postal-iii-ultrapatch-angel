// Difficulty system
// TODO: probably add cvars
#include "difficulty/npcmaker.as"


array<string> diff_maps;

[HIDDEN]
class CDifficulty : IPostal3Script
{
	//CP3SObj@ self;
	//CDifficulty(CP3SObj@ obj)
	//{
	//	@self = @obj;
	//}

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
	
	// Modify some spawners that spawn Hostile NPCs in on higher difficulties
	[HOOK SEngine LevelInitComplete]
	void AdjustNPCSpawnRates()
	{
		// Only Masochist and higher difficulties adjust makers
		if (GetDifficulty() < DIFF_MASOCHIST)
		{
			return;
		}
		
		if (gpGlobals.eLoadType == MapLoad_NewGame)
		{
			diff_maps.removeRange(0, diff_maps.length());
		}
		
		// Only transitions or new game
		// It shouldn't be a problem normally, but for open world we need to check the maps
		if ((gpGlobals.eLoadType == MapLoad_Transition || gpGlobals.eLoadType == MapLoad_NewGame) == false)
			return;
			
		string mapname = gpGlobals.mapname;
		mapname.toLower();
		
		// Already added at some point
		// NOTE: this breaks open world
		// need a way to know if an NPC maker had its values set, or store the default values somewhere...
		if (diff_maps.find(mapname) >= 0)
			return;
		
		diff_maps.insertLast(mapname);
		
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