Resource/UI/HUD/PaparazziHealthPanel.res"
{
    "AttributePanel"
    {
        "ControlName"	"AttributePanel"
		"fieldName"	"AttributePanel"
        
        "xpos"		"50"
		"ypos"		"r120"
        
		"wide"		"520"
		"tall"		"100"
        "visible"	"1"
		"enabled"	"1"
        "PaintBackgroundType" "4"
        "paintbackground" "1"
        "BgColor" "255 0 0 255"
        "pinCorner"	"0"
	}
        
    "BackPanel"
    {
        "ControlName"	"Panel"
		"fieldName"	"BackPanel"
		"xpos"		"0"
		"ypos"		"20"
		"wide"		"500"
		"tall"		"80"
        "visible"	"0"
		"enabled"	"0"
        "PaintBackgroundType" "2"
        "pinCorner"	"0"
	}
    
    "AttributeIcon"
	{
        "ControlName"	"ImagePanel"
		"fieldName"	"AttributeIcon"
		"xpos"		"4"
		"ypos"		"15"
		"wide"		"64"
		"tall"		"64"
		"image"		"hud/HealthBars/helicopter.vtf"
		"scaleImage" "1"
        "visible"	"1"
		"enabled"	"1"
	}
    
	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"75"
		"ypos"			"70"
		"wide"			"420"
		"tall"			"20"
        "monochrome_color" "4 99 13 255"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"2"
        "outline_texture" "vgui/hud/HealthBars/health_bar_1"
        "bar_texture" "vgui/hud/HealthBars/health_bar_2"
	}
	
	"Conscious"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Conscious"
		"xpos"			"75"
		"ypos"			"95"
		"wide"			"420"
		"tall"			"10"
        "monochrome_color" "255 201 14 255"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"2"
        //"outline_texture" "vgui/hud/HealthBars/health_bar_1"
        "bar_texture" "vgui/hud/HealthBars/health_bar_2"
	}
    
    "EntityName"
	{
		"ControlName"	"Label"
		"fieldName"	"EntityName"
		"xpos"		"75"
		"ypos"		"35"
		"wide"		"200"
		"tall"		"30"
		"wrap"		"1"
		"autoResize"	"0"
		"visible"	"1"
		"enabled"	"1"
		"labelText"	"#PzziName"
		"Font" "MissionLogBig"
		"textAlignment"	"center"
		"dulltext"	"0"
		"brighttext"	"0"
	}
}
