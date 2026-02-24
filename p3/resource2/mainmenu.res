"MainMenu"
{	
	"ResumeGame"
	{
		"text"			"#GameUI2_ResumeGame"
		"description"	"#GameUI2_ResumeGameDescription"
		"command"		"cvar gamemenucommand resumegame"
		"priority"		"9"
		"specifics"		"ingame"
	}
	
	"ContinueGame"
	{
		"text"			"#GameUI2_ContinueGame"
		"description"	"#GameUI2_ContinueGameDescription"
		"command"		"cvar gameui2_continuegame"
		"priority"		"8"
		"specifics"		"mainmenu"
		"tv"			"pc_continue"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_ContinueGame"
	}
	
	"NewGame"
	{
		"text"			"#GameUI2_NewGame"
		"description"	"#GameUI2_NewGameDescription"
		"command"		"cvar gamemenucommand opennewgamedialog"
		"priority"		"7"
		"specifics"		"shared"
		"tv"			"pc_newgame"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_NewGame"
	}
	
	"SaveGame"
	{
		"text"			"#GameUI2_SaveGame"
		"description"	"#GameUI2_SaveGameDescription"
		"command"		"cvar gamemenucommand opensavegamedialog"
		"priority"		"6"
		"specifics"		"ingame"
	}
	
	"LoadGame"
	{
		"text"			"#GameUI2_LoadGame"
		"description"	"#GameUI2_LoadGameDescription"
		"command"		"cvar gamemenucommand openloadgamedialog"
		"priority"		"5"
		"specifics"		"shared"
		"tv"			"pc_loadgame"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_LoadGame"
	}
	
	"Achievements"
	{
		"text"			"#GameUI2_Achievements"
		"description"	"#GameUI2_AchievementsDescription"
		"command"		"cvar gamemenucommand openachievementsdialog"
		"priority"		"4"
		"specifics"		"shared"
		"tv"			"pc_achievements"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_Achievements"
	}
	
	"Options"
	{
		"text"			"#GameUI2_Options"
		"description"	"#GameUI2_OptionsDescription"
		"command"		"cvar gamemenucommand openoptionsdialog"
		"priority"		"3"
		"specifics"		"shared"
		"tv"			"pc_options"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_Options"
	}
	
	"Addons"
	{
		"text"			"#GameUI2_Addons"
		"description"	"#GameUI2_AddonsDescription"
		"command"		"cvar gameui2_openaddonsdialog"
		"priority"		"2"
		"specifics"		"shared"
	}

	"Quit"
	{
		"text"			"#GameUI2_Quit"
		"description"	"#GameUI2_QuitDescription"
		"command"		"cvar gamemenucommand quit"
		"priority"		"0"
		"specifics"		"shared"
		"tv"			"pc_quit"
		// TODO: do we really have to do this?
		"vmt"			"#GameUI_GameMenu_Quit"
	}
	
	"Twitter"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.x.com/WhackJob_Int"
		// materials/vgui/.
		"image"			"social/twitter.vtf"
		"image_scale"	"1"
		"priority"		"10"
		"specifics"		"social"
	}
	
	"Discord"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.discord.com/invite/Q8K8TMA"
		// materials/vgui/.
		"image"			"social/discord.vtf"
		"image_scale"	"1"
		"priority"		"11"
		"specifics"		"social"
	}
	
	"ModDB"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.moddb.com/mods/postal-iii-ultrapatch"
		// materials/vgui/.
		"image"			"social/moddb.vtf"
		"image_scale"	"1"
		"priority"		"12"
		"specifics"		"social"
	}
	
	"GitHub"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.github.com/Kizoky/postal-iii-ultrapatch-angel"
		// materials/vgui/.
		"image"			"social/github.vtf"
		"image_scale"	"1"
		"priority"		"13"
		"specifics"		"social"
	}
	
	"VK"
	{
		"text"			""
		"description"	""
		// мяу
		"command"		"cvar gameui2_openurl www.vk.com/catharsisreborn"
		// materials/vgui/.
		"image"			"social/vk.vtf"
		"image_scale"	"1"
		"priority"		"14"
		"specifics"		"social"
	}
	
	"YouTube"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.youtube.com/@WhackJobInteractive"
		// materials/vgui/.
		"image"			"social/youtube.vtf"
		"image_scale"	"1"
		"priority"		"15"
		"specifics"		"social"
	}
	
	"WhackJob"
	{
		"text"			""
		"description"	""
		"command"		"cvar gameui2_openurl www.linktr.ee/WhackJob_Int"
		// materials/vgui/.
		"image"			"social/whackjob.vtf"
		"image_scale"	"1"
		"priority"		"16"
		"specifics"		"social"
	}
}