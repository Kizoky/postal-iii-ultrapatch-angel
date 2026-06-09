"Resource/UI/HUD/RonHealthPanel.res"
{
	"AttributePanel"
  {
        "ControlName"	"AttributePanel"
				"fieldName"	"AttributePanel"
				"wide"		"140"
				"tall"		"200"
        "visible"	"1"
				"enabled"	"1"
        "PaintBackgroundType" "4"
        "paintbackground" "1"
        "BgColor" "255 0 0 255"
        "pinCorner"	"0"
	}
    
    "AttributeIcon"
	{
        "ControlName"	"ImagePanel"
		"fieldName"	"AttributeIcon"
		"xpos"		"25"
		"ypos"		"30"
		"wide"		"90"
		"tall"		"100"
		"image"		"hud/HealthBars/RonJ.vtf"
		
		"scaleImage" "1"
    "visible"	"1"
		"enabled"	"1"
	}
    
	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"20"
		"ypos"			"145"
		"zpos"			"1"
		"wide"			"100"
		"tall"			"26"
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
		"xpos"			"20"
		"ypos"			"170" // +25
		"zpos"			"1"
		"wide"			"100"
		"tall"			"16" // -10
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
		"xpos"		"20"
		"ypos"		"148"
		"zpos"		"2"
		"wide"		"100"
		"tall"		"20"
		"wrap"		"1"
		"autoResize"	"0"
		"visible"	"1"
		"enabled"	"1"
		"labelText"	"#RonName"
		"Font" "MissionLogBig"
		"textAlignment"	"center"
		"centerwrap"	"1"
		"dulltext"	"0"
		"brighttext"	"0"
	}
}
