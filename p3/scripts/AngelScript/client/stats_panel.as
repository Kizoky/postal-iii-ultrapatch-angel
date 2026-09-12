ConVar@ p3_ultrapatch_stats_open = CreateCVar("p3_ultrapatch_stats_open", "0");

class CStatsPanel : IClient
{
	// For HudLayout.res injection
	// Always use string!
	string LAYOUT_xpos = 				"c-280";
	string LAYOUT_ypos = 				"c-280";
	string LAYOUT_wide = 				"1280";
	string LAYOUT_tall = 				"720";
	string LAYOUT_visible = 			"1";
	string LAYOUT_enabled = 			"1";
	string LAYOUT_paintbackgroundtype = "0";
	string LAYOUT_paintbackground = 	"0";
	string LAYOUT_bgcolor = 			"255 0 0 255";
	string LAYOUT_pincorner = 			"1";
	
	////////////////////////////////////////
	
	vgui::ScriptedPanel@ self = @null;
	vgui::Panel@ pCast = @null;
	vgui::EditablePanel@ epCast = @null;
	vgui::HudElement@ hudCast = @null;
	
	vgui::ImagePanel@ m_pStatsImage = @null;
	vgui::Label@ m_pStatsText = @null;
	vgui::Label@ m_pStatsExitText = @null;
	
	float m_flAlphaOverride = 255.0f;
	
	bool bLoadedElements = false;
	
	void Construct_VGUI(vgui::ScriptedPanel@ obj)
	{
		Warning("Construct\n");
		
		@self = @obj;
		
		// This should not happen..
		if (@self == @null)
			return;
		
		@pCast = @self.GetPanelPtr();
		@epCast = @self.GetEditablePanelPtr();
		
		// uhhh.
		if (@pCast == @null)
			return;
			
		@hudCast = cast<vgui::HudElement@>(@pCast);
		
		if (@hudCast == @null)
			return;
		
		//pCast.SetParent(GetP3Viewport());
		
		pCast.SetProportional(false);
		pCast.SetScheme("Resource/AngelScript/UI/HUD/stats_panelScheme.res", "StatsPanelScheme");
		
		epCast.LoadControlSettings("Resource/AngelScript/UI/HUD/stats_panel.res");
		
		LoadElements();
		
		vgui::ivgui.AddTickSignal( pCast );
		
		hudCast.SetHiddenBits( (1 << 4) ); // HIDEHUD_PLAYERDEAD
		epCast.SetVisible(true);
	}
	
	void ApplySettings()
	{
		pCast.SetProportional(false);
		pCast.SetScheme("Resource/AngelScript/UI/HUD/stats_panelScheme.res", "StatsPanelScheme");
		
		epCast.LoadControlSettings("Resource/AngelScript/UI/HUD/stats_panel.res");
		
		LoadElements();
	}
	
	void Destruct_VGUI()
	{
		//Printf("Destruct!\n");
	}
	
	void Init()
	{
		pCast.SetVisible(true);
	}
	
	void Paint()
	{
		epCast.SetAlpha(m_flAlphaOverride);
		
		if (@m_pStatsImage != @null) { m_pStatsImage.SetAlpha(255); }
		if (@m_pStatsText != @null) { m_pStatsText.SetAlpha(255); }
		if (@m_pStatsExitText != @null) { m_pStatsExitText.SetAlpha(255); }
	}
	
	bool ShouldDraw()
	{
		//Printf("ShouldDraw\n");
		return true;
	}
	
	void OnScreenSizeChanged(int iOldWide, int iOldTall)
	{
		epCast.LoadControlSettings("Resource/AngelScript/UI/HUD/stats_panel.res");
		
		LoadElements();
	}
	
	void LevelInit()
	{
		SetVisible(true);
	}
	
	void ProcessInput()
	{
		if ( p3_ultrapatch_stats_open.GetInt() == 1 && 
			gHUD.HasKeyPressed( (IN_ATTACK | IN_ATTACK2 | IN_JUMP | IN_CANCEL) ) )
		{
			// Swallow the button
			gHUD.SwallowKey( (IN_ATTACK | IN_ATTACK2 | IN_JUMP | IN_CANCEL) );
			input.ClearInputButton( (IN_ATTACK | IN_ATTACK2 | IN_JUMP | IN_CANCEL) );
			
			// Hide stats
			client.ClientCommand("p3_ultrapatch_stats_open 0\n" );
			client.ClientCommand("unpause\n"); // Unpause the game
		}
	}
	
	void FireGameEvent(IGameEvent@ event)
	{
		//Printf("ExamplePanel: FireGameEvent\n");
	}
	
	void SetVisible(bool state)
	{
		if (state)
		{
			// ...
		}
	}
	
	void OnTick()
	{
		if (ShouldDraw() == false)
		{
			return;
		}
		
		if (!bLoadedElements)
		{
			return;
		}
		
		CBasePlayer@ pPlayer = @GetLocalPlayer();
		if (@pPlayer == @null)
		{
			epCast.SetVisible(false);
			return;
		}
		else
		{
			epCast.SetVisible(true);
		}
		
		CP3Player@ pP3Player = cast<CP3Player@>(pPlayer);
		if (@pP3Player == @null)
		{
			if (@pPlayer != @null)
			{
				Warning("wtf? (P3 player is null but Player not)\n");
			}
			
			epCast.SetVisible(false);
			return;
		}
		
		if (@m_pStatsImage != @null && @m_pStatsText != @null)
		{
			int statsShowing = GetCVarInt("p3_ultrapatch_stats_open");
			
			if (statsShowing == 1)
			{	
				string statsText = "";
				for (int i = 0; i < GetAngelStatCount(); i++)
				{
					AngelStat@ stat = @GetAngelStatIndex(i);
					if (@stat == @null)
					{
						continue;
					}
					
					if (stat.UsesInt())
					{
						if (stat.UsesDisplay2() == false)
							statsText = FormatString("%s\n%s: %d", statsText, stat.GetDisplayName(), stat.GetCountInt());
						else
							statsText = FormatString("%s\n%s: %d %s", statsText, stat.GetDisplayName(), stat.GetCountInt(), stat.GetDisplay2Name());
					}
					else if (stat.UsesFloat())
					{
						if (stat.UsesDisplay2() == false)
							statsText = FormatString("%s\n%s: %.2f", statsText, stat.GetDisplayName(), stat.GetCountFloat());
						else
							statsText = FormatString("%s\n%s: %.2f %s", statsText, stat.GetDisplayName(), stat.GetCountFloat(), stat.GetDisplay2Name());
					}
					else if (stat.UsesBool())
					{
						bool bState = stat.GetCountBool();
						
						string boolText = "X";
						if (!bState)
							boolText = " ";
							
						if (stat.UsesDisplay2() == false)
							statsText = FormatString("%s\n%s %s", statsText, stat.GetDisplayName(), boolText);
						else
							statsText = FormatString("%s\n%s %s %s", statsText, stat.GetDisplayName(), boolText, stat.GetDisplay2Name());
					}
				}
				
				m_pStatsText.SetText(statsText);
				
				if (!engine.IsPaused())
				{
					client.ClientCommand("hud_reloadscheme\n");
					client.ClientCommand("setpause\n");
				}
				
				m_pStatsImage.SetVisible(true);
				m_pStatsText.SetVisible(true);
				m_pStatsExitText.SetVisible(true);
			}
			else
			{
				m_pStatsImage.SetVisible(false);
				m_pStatsText.SetVisible(false);
				m_pStatsExitText.SetVisible(false);
			}
		}
		
		if (pPlayer.GetHealth() > 0)
			epCast.SetVisible(true);
		else
			epCast.SetVisible(false);
	}
	
	void LoadElements()
	{
		// Stats
		@m_pStatsImage = 	cast<vgui::ImagePanel@>( 		@pCast.FindChildByName("StatsPanel") );
		if (@m_pStatsImage != @null)
			m_pStatsImage.SetVisible(false);
		
		@m_pStatsText = 	cast<vgui::Label@>( 			@pCast.FindChildByName("StatsText") );
		if (@m_pStatsText != @null)
			m_pStatsText.SetVisible(false);
		
		@m_pStatsExitText = cast<vgui::Label@>( 			@pCast.FindChildByName("StatsExitText") );
		if (@m_pStatsExitText != @null)
			m_pStatsExitText.SetVisible(false);
			
		bLoadedElements = true;
	}
}