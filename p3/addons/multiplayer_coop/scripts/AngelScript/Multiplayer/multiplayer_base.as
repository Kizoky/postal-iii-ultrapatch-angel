class MissionBase : IPostal3Script
{
	CP3SObj@ self;
	
	MissionBase(CP3SObj@ obj)
	{
		if (obj != null)
			@self = obj;
	}
	
	void SayChat(string msg)
	{
		IGameEvent@ event = gameeventmanager.CreateEvent("p3_mp_chat", true);
		if (@event != null)
		{
			event.SetString("chat", msg);
			gameeventmanager.FireEvent(event);
		}
	}
	
	// TODO: Get data from SLC, or from the source code somehow - Kizoky
	string GetNextMission()
	{
		string map = server.GetCurMapName();
		
		// Fallback
		string next = "pdb";
		
		if (map == "pdb")
			next = "pw";
		else if (map == "pw")
			next = "dcr";
		else if (map == "dcr")
			next = "jwb";
		else if (map == "jwb")
			next = "cm";
		else if (map == "cm")
			next = "pdb";
			
		/*
		if (map == "cm")
		{
			if (self.GetCurPattern() == "pt_good")
			{
			}
			else if (self.GetCurPattern() == "pt_bad")
			{
				// badger badger badger mushroom
			}
			else if (self.GetCurPattern() == "pt_insane")
			{
			}
		}
		*/
			
		// TODO: Bad or good path?
		
		return next;
	}
	
	void ToNextMission()
	{
		SayChat("======================================");
		SayChat("Server is changing to the next mission");
		SayChat("All players will be kicked in 3 seconds");
		SayChat("You will need to reconnect to the server!");
		SayChat("NOTE: The server might crash");
		SayChat("======================================");
		Wait(3.0);
		SayChat("3..");
		Wait(2.0);
		SayChat("2..");
		Wait(2.0);
		SayChat("1..");
		Wait(2.0);
		server.ClientCommand("kickall");
		Wait(0.75);
		
		//string nextmission;
		//nextmission.format("map %s", GetNextMission());
		
		server.ClientCommand("p3_end_mission");
	}
	
	void OnMissionFailed()
	{
		SayChat("======================================");
		SayChat("Server is restarting mission");
		SayChat("All players will be kicked in 3 seconds");
		SayChat("You will need to reconnect to the server!");
		SayChat("======================================");
		Wait(3.0);
		SayChat("3..");
		Wait(2.0);
		SayChat("2..");
		Wait(2.0);
		SayChat("1..");
		Wait(2.0);
		server.ClientCommand("kickall");
		Wait(0.75);
		
		string map = server.GetCurMapName();
		
		string cl;
		cl.format("map %s", map);
		
		server.ClientCommand(cl);
	}
	
	// Detect "new" players joining
	void OnNewGame()
	{
		// Wait till server fully loads in
		Wait(0.07);
		
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (arr[i].HasAttr("HasSpawned"))
				continue;
				
			OnSpawn(arr[i]);
		}
	}
	
	void OnSpawn(CP3SObj@ player)
	{
		player.SetAttr("HasSpawned", 1);
		
		Wait(0.17);
		
		// Automatically execute voice fix
		server.ClientCommand("p3_ultrapatch_mp_voice_fix", player.GetPlayerPtr());
	}
	
	// Some missions will remove all weapons from the player
	void RemoveAllWeapons(CP3SObj@ player)
	{
		array<CP3SObj@> arr = server.GetArrayOfWeapons(player);
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			CP3Weapon@ wpn = arr[i].GetWeaponPtr(); //GetBaseEntity().GetP3WeaponPtr();
			if (@wpn == null)
				continue;
				
			// Remove all weapons, and store them... except these
			CP3Weapon@ empty_hands = player.GetPlayerPtr().Weapon_OwnsThisType("p3_weapon_emptyhands");
			CP3Weapon@ weemote = player.GetPlayerPtr().Weapon_OwnsThisType("p3_weapon_weemote");
			CP3Weapon@ match = player.GetPlayerPtr().Weapon_OwnsThisType("p3_weapon_match");
			
			// do not do not do not do not
			if (@wpn != empty_hands &&
				@wpn != weemote &&
				@wpn != match)
			{
				player.GetPlayerPtr().Weapon_Detach(wpn);
			}
		}
	}
	
	void RemoveWeapon(string sWeapon)
	{
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (@arr[i].GetPlayerPtr() == null)
				continue;
				
			// Maybe someone didn't pick it up?
			CP3Weapon@ pWeapon = arr[i].GetPlayerPtr().Weapon_OwnsThisType(sWeapon);
			if (@pWeapon == null)
				continue;
				
			arr[i].GetPlayerPtr().Weapon_Detach(pWeapon);
		}
	}
	
	// Forces everyone to use a specific weapon... if it exists
	void UseWeapon(string sWeapon)
	{
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (@arr[i].GetPlayerPtr() == null)
				continue;
				
			// Maybe someone didn't pick it up?
			CP3Weapon@ pWeapon = arr[i].GetPlayerPtr().Weapon_OwnsThisType(sWeapon);
			if (@pWeapon == null)
				continue;
				
			arr[i].GetPlayerPtr().Weapon_Switch(pWeapon);
		}
	}
	
	void GiveWeapon(string sWeapon)
	{
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (@arr[i].GetPlayerPtr() == null)
				continue;
				
			arr[i].GetPlayerPtr().GiveNamedItem(sWeapon);
		}
	}
}