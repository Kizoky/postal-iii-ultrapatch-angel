"MainMenu"
{	
	"ResumeGame"
	{
		"text"			"#GameUI2_ResumeGame"
		"description"	"#GameUI2_ResumeGameDescription"
		"command"		"cvar gamemenucommand resumegame"
		"priority"		"8"
		"specifics"		"ingame"
	}
	
	"NewGame"
	{
		"text"			"#GameUI2_NewGame"
		"description"	"#GameUI2_NewGameDescription"
		"command"		"cvar gamemenucommand opennewgamedialog"
		"priority"		"7"
		"specifics"		"shared"
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
	}
	
	"Achievements"
	{
		"text"			"#GameUI2_Achievements"
		"description"	"#GameUI2_AchievementsDescription"
		"command"		"cvar gamemenucommand openachievementsdialog"
		"priority"		"4"
		"specifics"		"shared"
	}
	
	"Options"
	{
		"text"			"#GameUI2_Options"
		"description"	"#GameUI2_OptionsDescription"
		"command"		"cvar gamemenucommand openoptionsdialog"
	//	"command"		"cvar gameui2_openoptionsdialog"
		"priority"		"3"
		"specifics"		"shared"
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
	//	"command"		"cvar gameui2_openquitgamedialog"
		"priority"		"1"
		"specifics"		"shared"
	}
	
	"Twitter"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/twitter.vtf"
		"image_offset"	"5"
		"image_scale"	"1"
		"priority"		"10"
		"specifics"		"social"
	}
	
	"Discord"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/discord.vtf"
		"image_offset"	"20"
		"image_scale"	"1"
		"priority"		"11"
		"specifics"		"social"
	}
	
	"ModDB"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/moddb.vtf"
		"image_offset"	"20"
		"image_scale"	"1"
		"priority"		"12"
		"specifics"		"social"
	}
	
	"GitHub"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/github.vtf"
		"image_offset"	"20"
		"image_scale"	"1"
		"priority"		"13"
		"specifics"		"social"
	}
	
	"VK"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/vk.vtf"
		"image_offset"	"20"
		"image_scale"	"1"
		"priority"		"14"
		"specifics"		"social"
	}
	
	"YouTube"
	{
		"text"			""
		"description"	""
		"command"		""
		// materials/vgui/.
		"image"			"social/youtube.vtf"
		"image_offset"	"20"
		"image_scale"	"1"
		"priority"		"15"
		"specifics"		"social"
	}
}