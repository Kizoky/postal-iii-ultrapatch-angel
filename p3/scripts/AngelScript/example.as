// Various examples for figuring out how AngelScript works in Postal 3 Ultrapatch

class CExample : IPostal3Script
{
	// This makes all NPCs with the Manner "SoccerMom" puke everytime you call this function
	// (You can try this out on PornWorld)
	void NastyMom()
	{
		array<CP3SObj@> arr = engine.GetArrayOfP3SObjs();
		for (uint i = 0; i < arr.length(); i++)
		{
			if ( @arr[i] == null )
				continue;
			if ( !arr[i].HasAI() )
				continue;
			if ( !arr[i].IsNPC() )
				continue;
			if ( arr[i].GetManner() != "SoccerMom")
				continue;
				
			arr[i].State("st_idle");
			arr[i].Pattern("pt_barf");
		}
	}
	
	//////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////
	CBaseEntity@ active;
	CBaseEntity@ cam;
	
	// How much the camera will distance from the NPC from the back
	float BACK_DIST = 105.0f;
	// How much the camera will move up or down
	float UP_DIST = 10.0f;
	
	// Exits from active camera.
	void NPCCamExit()
	{
		if (@cam != null)
		{
			cam.FireInput("Disable");
		}
	}
	
	// This cycles through every NPC on the map, if found one then it attaches a camera behind them
	void NPCCamCycle()
	{	
		@active = FindEntByClass("p3_npc_*", active);
		
		if (@active == null)
		{
			NPCCamExit();
			return;
		}
		
		@cam = CreateEnt("wj_point_viewcontrol");
		
		int eyesAtt = active.LookupAttachment("eyes");
		Vector eyepos;
		QAngle eyeang;
		
		active.GetAttachment(eyesAtt, eyepos, eyeang);
		
		Vector newwpos = eyepos + Vector(0,0,UP_DIST);
		
		cam.SetAbsAngles(active.GetAbsAngles());
		
		Vector forward;
		Vector right;
		Vector up;
		
		// Use rotated angle so we will know the "back"
		AngleVectors(active.GetAbsAngles() + QAngle(0,180,0), forward, right, up);
		
		Vector nuVec = newwpos + (forward * BACK_DIST);
		
		cam.SetAbsOrigin(nuVec);
		
		cam.SetParent(active);
		
		Spawn(cam);
		
		CCutsceneCamera@ ccam = cast<CCutsceneCamera@>(cam);
		if (@ccam == null)
		{
			Printf("this didn't work.\n");
			return;
		}
		
		CP3SObj@ pplayer = GetPlayer();
		
		ccam.SetTarget(pplayer.GetBaseEntity());
		
		cam.FireInput("Enable");
	}
	
	//////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////
	
	// This spawns a tank above the Player.
	// Make sure you have god mode enabled or you will be crushed!
	void SpawnTank()
	{
		CP3SObj@ player = GetPlayer();
		if (@player == null)
			return;
		
		PrecacheModel("models/cars/tank/hull.mdl");
		PrecacheModel("models/cars/tank/turret.mdl");
		PrecacheModel("models/cars/tank/gatling.mdl");
		PrecacheModel("models/cars/tank/cannon.mdl");
		PrecacheModel("models/cars/tank/launcher_l.mdl");
		PrecacheModel("models/cars/tank/launcher_r.mdl");
		PrecacheModel("models/cars/tank/gatling_damaged.mdl");
		PrecacheModel("models/cars/tank/cannon_damaged.mdl");
		PrecacheModel("models/cars/tank/launcher_damaged.mdl");
		
		PrecacheModel("models/cars/tank/turret_destroyed.mdl");
		PrecacheModel("models/cars/tank/gatling_destroyed.mdl");
		PrecacheModel("models/cars/tank/cannon_destroyed.mdl");
		
		CBaseEntity@ tank = CreateEnt("prop_vehicle_tank");
		
		tank.SetAbsOrigin(player.GetBaseEntity().GetAbsOrigin()+Vector(0,0,100));
		tank.SetAbsAngles(player.GetBaseEntity().GetAbsAngles());
		
		tank.KeyValue("model", "models/cars/tank/hull.mdl");
		tank.KeyValue("VehicleLocked", "0");
		tank.KeyValue("vehiclescript", "scripts/vehicles/tank_up.txt");
		
		Spawn(tank);
		tank.Activate();
	}
	
	//////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////
	
	// This makes Uwe Boll practically immortal by giving him 9999 HP
	void InfiniteUwe()
	{
		CBaseEntity@ uwe = FindEntByName("npc_uwe");
		if (@uwe == null)
			return;
			
		CP3SObj@ uwep3s = uwe.GetP3SObj();
		if (@uwep3s == null)
			return;
		
		Printf("CExample::InfiniteUwe: Made Uwe immortal\n");
		uwep3s.SetAttr("ea_health", 9999, 0, 9999);
	}
	
	//////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////
	
	// This teleports Uwe to the Player
	void TeleportUwe()
	{
		CBaseEntity@ uwe = FindEntByName("npc_uwe");
		if (@uwe == null)
			return;
			
		CP3SObj@ player = GetPlayer();
		if (@player == null)
			return;
			
		CBaseEntity@ playerPtr = player.GetBaseEntity();
		if (@playerPtr == null)
			return;
		
		Printf("CExample::TeleportUwe: Teleported Uwe to the Player.\n");
		
		uwe.SetAbsAngles(playerPtr.GetAbsAngles());
		uwe.SetAbsOrigin(playerPtr.GetAbsOrigin());
	}
	
	//////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////
	
	//"p3_database_thingy"
	//{
	//	"entry"
	//	{
	//		"HateFactions"
	//		{
	//			// Hater        // Hatee
	//			"Animals"       "Citizens"
	//			"Animals"       "Player"
	//			"Animals"       "Police"
	//			"Animals"       "Hobos"
	//			
	//			"Citizens"		"Animals"
	//			
	//			"Police"		"Animals"
	//		}
	//		
	//		// Factions LIKE this Faction, they will protect them at all costs
	//		// (example of another entry for a DB thing)
	//		"LikeFactions"
	//		{
	//			// Liker		// Liked
	//			"Police"		"Police"
	//			"Police"		"Vendors"
	//			
	//			"Vendors"		"Vendors"
	//			"Zealots"		"Animals"
	//		}
	//	}
	//}
	
	// This is a bit more complex example of using a class to store data from a txt file
	
	// Note: this data or array is not saved to save file, make sure to reinitialize this on new/load game!
	array<HateFaction> hateFactioners;
	void UpdateHateDB()
	{
		hateFactioners.removeRange(0,hateFactioners.size());
	
		KeyValues@ pData = CreateKeyValues("P3_Database_Thingy");
		pData.LoadFromFile("scripts/p3_database_thingy.txt");
		
		for (KeyValues@ pKV = pData.GetFirstSubKey(); pKV != null; @pKV = pKV.GetNextKey())
		{
			// We are now inside "entry"
			Printf("Key Name: %s\n", pKV.GetName());
			
			// Let's look specifically for "HateFactions", since we do have one!
			KeyValues@ pSubs = pKV.FindKey("HateFactions");
			if (pSubs != null)
			{
				for (KeyValues@ pSub = pSubs.GetFirstSubKey(); pSub != null; @pSub = pSub.GetNextKey())
				{
					string hater = pSub.GetName();
					string hatee = pSub.GetString();
					
					HateFaction test;
					
					// If there's an entry for hater already, don't add it to array, but add hater to the list!
					bool bFound = false;
					for (uint i = 0; i < hateFactioners.length(); i++)
					{
						if (hateFactioners[i].self == hater)
						{
							test = hateFactioners[i];
							bFound = true;
							break;
						}
					}
					
					// This is a safe check for already existing entries
					// We don't really need to do this but here's one as an example!
					if (bFound)
					{
						// We already did this once, continue looping...
						if (test.hates.find(hatee) != -1)
						{
							continue;
						}
						// Not found, then add hater to list!
						
					}
					else
					{
						test.self = hater;
					}
					
					test.hates.insertLast(hatee);
					
					Printf("Hater '%s' hates '%s'\n", hater, hatee);
					
					// If it's not on the array already, insert!
					if (!bFound)
						hateFactioners.insertLast(test);
				}
			}
		}
		
		// it is VERY important to delete KeyValues if we don't use it anymore!
		pData.deleteThis();
	}
	
	// Then we could check the factions like this way
	bool IsFactionHate(CP3SObj@ self, CP3SObj@ target)
	{
		// By default it should return false
		if (@self == null || @target == null)
			return false;
		
		string selfFaction = self.GetFaction();
		string targetFaction = target.GetFaction();
		
		for (uint i = 0; i < hateFactioners.length(); i++)
		{
			// Got our faction...
			if (hateFactioners[i].self == selfFaction)
			{
				// Let's iterate through self's hate list...
				for (uint j = 0; j < hateFactioners[i].hates.length(); j++)
				{
					// Yes, we hate this faction!
					if (hateFactioners[i].hates[j] == targetFaction)
					{
						return true;
					}
				}
			}
		}
			
		return false;
	}
}