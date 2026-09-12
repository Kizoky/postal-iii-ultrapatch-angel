
[HIDDEN]
class SEngine : IClient
{
	// entities are created / spawned / precached here
	[HOOK SEngine LevelInitPostEntity]
	void LevelInitPostEntity()
	{

	}
	
	// Level loaded, but before entities spawned in
	[HOOK SEngine LevelInitPreEntity]
	void LevelInitPreEntity()
	{
		
	}
	
	// Level completely shut down, no entities here
	[HOOK SEngine LevelShutdownPostEntity]
	void LevelShutdownPostEntity()
	{	
		
	}
	
	// Level not yet shut down, entities are still here
	[HOOK SEngine LevelShutdownPreEntity]
	void LevelShutdownPreEntity()
	{
		
	}
	
	// Level fully loaded, transition or load game
	[HOOK SEngine OnRestore]
	void OnRestore()
	{
		
	}
	
	// Player saved the game
	[HOOK SEngine OnSave]
	void OnSave()
	{
		
	}
	
	void CreateAngelPanels()
	{
		CreateVGUI_ScriptedPanel("CStatsPanel", "Resource/AngelScript/UI/Hud/stats_panel.res", GetP3Viewport());
		
		
		client.ClientCommand("hud_reloadscheme\n");
	}
	
	// Whenever the scripts are recompiled
	// Usually during loading a game from a save file
	[HOOK SEngine Recompile]
	void Recompile()
	{
		CreateAngelPanels();
	}
	
	// Called when the game starts up and AngelScript successfully compiled
	[HOOK SEngine PostInit]
	void PostInit()
	{
		//CreateNewAchievement("ACH_CURIOUS_BASTARD", 50, false, 50);
		CreateAngelPanels();
	}
	
	// Game events when fired
	[HOOK SEngine FireGameEvent]
	void FireGameEvent(IGameEvent @evt)
	{
	
	}
	
	[HOOK SEngine OnCVarChanged]
	void OnCVarChanged(string name, string OldString, float OldValue)
	{
		
	}
}