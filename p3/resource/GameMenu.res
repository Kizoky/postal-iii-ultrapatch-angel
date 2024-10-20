"GameMenu"
{
	"1"
	{
		"label" "#GameUI_GameMenu_CreateServer"
		"command" "OpenCreateMultiplayerGameDialog"
		"InGameOrder" "0"
		"notmulti" "0"
		"center" "1"
	}
	"2"
	{
		"label" "#GameUI_GameMenu_Disconnect"
		"command" "engine disconnect"
		"InGameOrder" "10"
		"OnlyInGame" "1"
		"center" "1"
		"notmulti" "0"
	}
	"3"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"InGameOrder" "20"
		"OnlyInGame" "1"
		"center"		"1"
	}
    "4"
	{
		"label" "#GameUI_GameMenu_ContinueGame"
		"command" "ContinueGame"
		"InGameOrder" "30"
		"OnlyInMenu" "1"
		"center"		"1"
	}
	"5"
	{
		"label" "#GameUI_GameMenu_NewGame"
		"command" "OpenNewGameDialog"
		"InGameOrder" "40"
		"notmulti" "1"
		"center"		"1"
	}
	"6"
	{
		"label" "#GameUI_GameMenu_LoadGame"
		"command" "OpenLoadGameDialog"
		"InGameOrder" "50"
		"notmulti" "1"
		"center"		"1"
	}
	"7"
	{
		"label" "#GameUI_GameMenu_SaveGame"
		"command" "OpenSaveGameDialog"
		"InGameOrder" "60"
		"notmulti" "1"
		"OnlyInGame" "1"
		"center"		"1"
	}
	"8"
	{
		"label" "#GameUI_Controller"
		"command" "OpenControllerDialog"
		"InGameOrder" "70"
		"ConsoleOnly" "1"
		"center"		"1"
	}
	"9"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
		"InGameOrder" "80"
		"center"		"1"
	}
	"11"
	{
		"label" "#GameUI_GameMenu_PlayerList"
		"command" "engine gamemenucommand openplayerlistdialog"
		"InGameOrder" "90"
		"OnlyInGame" "1"
		"center"		"1"
	}
	"12"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
		"InGameOrder" "100"
		"center"		"1"
	}
}

