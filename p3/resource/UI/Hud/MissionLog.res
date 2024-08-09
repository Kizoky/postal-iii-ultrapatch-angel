"Resource/UI/HUD/MissionLog.res"
{
	
	"BackGround"
	{
		"ControlName"	"Panel"
		"fieldName"	"BackPanel"
		"title"		""
		"xpos"		"50"
		"ypos"		"0"
		"wide"		"355"
		"tall"		"300"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
        "paintbackground" "1"
		"PaintBackgroundType" "4"
        "border_thickness" "32"
	}
        
	
    "KarmaBack"
    {
       "ControlName"	"ImagePanel"
		"fieldName"	"KarmaBack"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"90"
		"tall"		"100"
		"image"		"hud/semicircle.vtf"
		"scaleImage" "1"
        "visible"	"0"
		"enabled"	"1"
	}

	"AngelWings" // Angel Wings
	{
        "ControlName"	"ImagePanel"
		"fieldName"		"AngelWings"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"90"
		"tall"			"100"
		"image"			"hud/angel_wings.vtf"
		
		"scaleImage" 	"1"
		"visible"		"0"
		"enabled"		"1"
	}

    
	"PrimaryObjectivesLabel"
	{
		"ControlName"	"Label"
		"fieldName"	"PrimaryObjectivesLabel"
		"xpos"		"90"
		"ypos"		"32"
		"wide"		"250"
		"tall"		"25"
		"wrap"		"0"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"labelText"	"#ML_PrimaryObjectives"
		"Font" "MissionLogBig"
		"textAlignment"	"north-west"
		"dulltext"	"0"
		"brighttext"	"1"
	}
	"SecondaryObjectivesLabel"
	{
		"ControlName"	"Label"
		"fieldName"	"SecondaryObjectivesLabel"
		"xpos"		"90"
		"ypos"		"150"
		"wide"		"250"
		"tall"		"25"
		"wrap"		"0"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"labelText"	"#ML_SecondaryObjectives"
		"Font" "MissionLogBig"
		"textAlignment"	"north-west"
		"dulltext"	"0"
		"brighttext"	"1"
	}
    
    "CHudMissionLog"
	{
		"ControlName"	"CHudMissionLog"
		"fieldName"	"CHudMissionLog"
		"title"		""
		"xpos"		"r"
		"ypos"		"c-143"
		"wide"		"395"
		"tall"		"300"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"paintbackground" "0"
	}
}