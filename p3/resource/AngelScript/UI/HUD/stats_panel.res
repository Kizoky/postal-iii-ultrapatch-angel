"Resource/AngelScript/UI/HUD/stats_panel.res"
{
	// ============================ Stats clipboard
	"StatsPanel" // Stats
	{
       	"ControlName"	"ImagePanel"
		"fieldName"		"StatsPanel"
		"xpos" 			"0"
		"ypos" 			"0"
		"wide" 			"500" 
		"tall" 			"500"
		"zpos"			"2"
		
		"image"			"hud/statspanel.vtf"

		"scaleImage" 	"1"
		"visible"		"1"
		"enabled"		"1"
		"wrap"			"0"
		"autoResize"	"0"
	}
	
	"StatsText"
    {
		"ControlName" 	"Label"
		"fieldName"		"StatsText"
		"xpos" 			"-65"
		"ypos" 			"15"
		"wide" 			"640" 
		"tall" 			"480"
		"zpos"			"5"
		"wrap"			"0"
		"autoResize"	"1"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"StatsTextLol"
		"Font" 			"piNotSmallNorMedium"
		"textAlignment"	"center"
       		"centerwrap" 	"1"
		"brighttext" "1"
	}

    "StatsExitText"
    {
		"ControlName" 	"Label"
		"fieldName"		"StatsExitText"
		"xpos" 			"-65"
		"ypos" 			"280"
		"wide" 			"640" 
		"tall" 			"480"
		"zpos"			"5"
		"wrap"			"0"
		"autoResize"	"1"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"Press SPACE To Resume Gameplay..."
		"Font" 			"piMedium"
		"textAlignment"	"center"
       		"centerwrap" 	"1"
		"brighttext" "1"
	}
}
