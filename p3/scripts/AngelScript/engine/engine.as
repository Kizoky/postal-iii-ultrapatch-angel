class SEngine : IPostal3Script
{
	// entities are created / spawned / precached here
	void LevelInitPostEntity()
	{
		// Spawn in pcc if it doesn't exist already
		CBaseEntity@ pcc = FindEntByName("pcc");
		if ( @pcc == null )
		{
			@pcc = CreateEnt("point_clientcommand");
			if ( @pcc != null )
			{
				pcc.KeyValue( "targetname", "pcc" );
				Spawn(pcc);
				pcc.Activate();
			}
		}
		
		// Spawn in lpp if it doesn't exist already
		CBaseEntity@ lpp = FindEntByName("lpp");
		if ( @lpp == null )
		{
			@lpp = CreateEnt("logic_playerproxy");
			if ( @lpp != null )
			{
				lpp.KeyValue( "targetname", "lpp" );
				Spawn(lpp);
				lpp.Activate();
			}
		}
	}
	
	// Level loaded, but before entities spawned in
	void LevelInitPreEntity()
	{
		
	}
	
	// Level completely shut down, no entities here
	void LevelShutdownPostEntity()
	{	
		
	}
	
	// Level not yet shut down, entities are still here
	void LevelShutdownPreEntity()
	{
		
	}
	
	// Level fully loaded, transition or load game
	void OnRestore()
	{
		
	}
	
	// Player saved the game
	void OnSave()
	{
		//ShowMessage("Saving...", "$P3Mission");
		
		//Printf("Creating event...\n");
		
		//IGameEvent@ event = gameeventmanager.CreateEvent("savegame");
		//if (event != null)
		//{
		//	//Printf("Firing event...\n");
		//	gameeventmanager.FireEventClientSide(event);
		//}
	}
	
	// Whenever the scripts are recompiled
	// Usually during loading a game from a save file
	void Recompile()
	{
		
	}
	
	// Called when the game starts up and AngelScript successfully compiled
	void PostInit()
	{
		
	}
	
	// Game events when fired
	void FireGameEvent(IGameEvent @evt)
	{
	
	}
	
	void OnCVarChanged(string name, string OldString, float OldValue)
	{
		
	}
}