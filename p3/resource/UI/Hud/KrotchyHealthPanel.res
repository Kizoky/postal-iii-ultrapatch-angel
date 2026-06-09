"Resource/UI/HUD/KrotchyHealthPanel.res"
{
    "AttributePanel"
    {
        "ControlName"	"AttributePanel"
		"fieldName"	"AttributePanel"
		"xpos"		"180"
		"ypos"		"r150"
        
		"wide"		"500"
		"tall"		"110"
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
		"xpos"		"16"
		"ypos"		"16"
		"wide"		"64"
		"tall"		"80"
		"image"		"hud/HealthBars/Krotchy.vtf"
        
		"scaleImage" "1"
        "visible"	"1"
		"enabled"	"1"
	}
    
	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"90"
		"ypos"			"70"
		"wide"			"390"
		"tall"			"22"
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
		"xpos"			"90"
		"ypos"			"90"
		"wide"			"390"
		"tall"			"14"
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
		"xpos"		"90"
		"ypos"		"35"
		"wide"		"140"
		"tall"		"30"
		"wrap"		"1"
		"autoResize"	"0"
		"visible"	"1"
		"enabled"	"1"
		"labelText"	"#KrotchyName"
		"Font" "MissionLogBig"
		"textAlignment"	"center"
		"dulltext"	"0"
		"brighttext"	"0"
	}
}
