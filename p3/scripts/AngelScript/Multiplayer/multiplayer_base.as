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
		string map = engine.GetCurMapName();
		
		// Fallback
		string next = "roam_hub1";
		
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
			
		// TODO: Bad or good path?
		
		return next;
	}
	
	void ToNextMission()
	{
		SayChat("======================================");
		SayChat("Server is changing to the next mission");
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
		engine.ClientCommand("kickall");
		Wait(0.75);
		
		//string nextmission;
		//nextmission.format("map %s", GetNextMission());
		
		engine.ClientCommand("p3_end_mission");
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
		engine.ClientCommand("kickall");
		Wait(0.75);
		
		string map = engine.GetCurMapName();
		
		string cl;
		cl.format("map %s", map);
		
		engine.ClientCommand(cl);
	}
	
	// Detect "new" players joining
	void OnNewGame()
	{
		// Wait till server fully loads in
		Wait(0.07);
		
		array<CP3SObj@> arr = engine.GetArrayOfPlayers();
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
	}
}