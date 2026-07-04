// Added +256 X to add inventory item stuff - Kizoky

"Resource/UI/HUD/HudPlayerInfo.res"
{
    "BackPanel"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"BackPanel"
		"xpos"		"256" // 0
		"ypos"		"0"
		"wide"		"256"
		"tall"		"256"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/back"
        "zpos" "-1"
        
	}
	
	// Back of the inventory item panel
	"BackInvPanel"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"BackInvPanel"
		"xpos"		"80"
		"ypos"		"0"
		"wide"		"136"
		"tall"		"256"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/back_inv"
        "zpos" "-1"
	}
	
	"InvItemAmount"
    {
		"ControlName" 	"Label"
		"fieldName"		"InvItemAmount"
		"xpos"			"110" //r235
		"ypos"			"165"
		"wide"			"64"
		"tall"			"48"
		"wrap"			"0"
		"autoResize"	"1"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"1234"
		"Font" 			"piMedium"
		//"textAlignment"	"center"
        "centerwrap" 	"0"
	}
	
	"InvItemName"
    {
		"ControlName" 	"Label"
		"fieldName"		"InvItemName"
		"xpos"			"267"
		"ypos"			"256"
		"wide"			"100"
		"tall"			"100"
		"wrap"			"0"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"Name"
		"Font" 			"piSmall"
		"textAlignment"	"center"
        "centerwrap" 	"0"
		"zpos"			"2"
	}
	
	"InvItemImage" // 330 + original Y value
	{
        "ControlName" 	"ImagePanel"
		"fieldName"		"InvItemImage"
		"xpos"			"110" // 630
		"ypos"			"100" // use 68
		"wide"			"64"
		"tall"			"64"
		"image"			"sprites/pizza.vtf"
        
		"scaleImage" 	"1"
        "visible"		"1"
		"enabled"		"1"
	}
    
    "WeaponIconPanel"
    {
        "ControlName"	"Panel"
		"fieldName"	"WeaponIconPanel"
		"xpos"		"360" // 104
		"ypos"		"64"
		"wide"		"128"
		"tall"		"128"
        "visible"	"0"
		"enabled"	"1"
//        "scaleImage" "1"
	}
    
    "AmmoOverall"
    {
		"ControlName"	"Label"
		"fieldName"	"AmmoOverall"
		"xpos"		"269" // 13
		"ypos"		"150"
		"wide"		"80"
		"tall"		"50"
		"wrap"		"0"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"labelText"	"777"
		"Font" "piMedium"
		"textAlignment"	"center"
        "centerwrap" "0"
	}
    
    "AmmoSpecial"
    {
		"ControlName"	"Label"
		"fieldName"	"AmmoSpecial"
		"xpos"		"316" // 60
		"ypos"		"155"
		"wide"		"40"
		"tall"		"50"
		"wrap"		"0"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"0"
		"enabled"	"1"
		"tabPosition"	"0"
		"labelText"	"77"
		"Font" "piMedium"
		"textAlignment"	"center"
        "centerwrap" "1"
	}
    
    "AmmoClip"
    {
		"ControlName"	"Label"
		"fieldName"	"AmmoClip"
		"xpos"		"266" // 10
		"ypos"		"105"
		"wide"		"80"
		"tall"		"50"
		"wrap"		"0"
		"autoResize"	"0"
		"pinCorner"	"0"
		"visible"	"1"
		"enabled"	"1"
		"tabPosition"	"0"
		"labelText"	"100"
		"Font" "piLarge"
		"textAlignment"	"center"
        "centerwrap" "0"
        "brighttext" "1"
	}
    
    "InfinityIcon"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"InfinityIcon"
		"xpos"		"276" // 20
		"ypos"		"113"
		"wide"		"64"
		"tall"		"64"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/infinity_icon"
    }
    
    "HealthBack"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"HealthBack"
		"xpos"		"256" // 0
		"ypos"		"0"
		"wide"		"64"
		"tall"		"64"
        "visible"	"0"
		"enabled"	"0"
        "scaleImage" "1"
        "image"		"hud/playerinfo/health_bar_red"
	}
    
    "Health"
    {
        "ControlName"	"CircularProgressBar"
		"fieldName"	"Health"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"351" // 95
		"ypos"		"55"
		"wide"		"144"
		"tall"		"144"
        "fg_image"		"hud/playerinfo/health_bar_green"
        "bg_image"		"hud/playerinfo/health_bar_red.vtf"
    }
	
	// Draws when Health is over 100 (to a maximum of 200)
	"OverHealth"
    {
        "ControlName"	"CircularProgressBar"
		"fieldName"	"OverHealth"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"351" // 95
		"ypos"		"55"
		"wide"		"144"
		"tall"		"144"
        "fg_image"		"hud/playerinfo/health_bar_overheal"
        "bg_image"		"" // background should be fully transparent
    }
    
    "HealthBorder"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"HealthBorder"
		"xpos"		"351" // 95
		"ypos"		"55"
		"wide"		"144"
		"tall"		"144"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/health_bar_border"
	}


    "RocketIndicator"
    {
        "ControlName"   "RotatingProgressBar"
		"fieldName"	"RocketIndicator"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"261" // 5
		"ypos"		"93"
		"wide"		"80"
		"tall"		"100"
       // "start_degrees" "-2.356"
        "start_degrees" "-225"
        "end_degrees" "-135"
        "rot_origin_x_percent" "0"
        "rot_origin_y_percent" "0.5"
        "rotating_x" "67"
        "rotating_y" "50"
        "rotating_wide" "45"
        "rotating_tall" "10"
        "image"		"hud/playerinfo/spec/rocket_launcher_bar_2"
    }
    
    "RocketBack"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"RocketBack"
		"xpos"		"276" // 20
		"ypos"		"100"
		"wide"		"64"
		"tall"		"95"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/spec/rocket_launcher_bar_1"
	}
    
    "ShopVacIndicator"
    {
        "ControlName"	"ProgressBar"
		"fieldName"	"ShopVacIndicator"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"274" // 18
		"ypos"		"111"
		"wide"		"67"
		"tall"		"78"
        "direction" "north"
        "fg_image"		"vgui/hud/playerinfo/spec/shop_vac_bar_2"
    }
    
    "ShopVacContur"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"ShopVacContur"
		"xpos"		"276" // 20
		"ypos"		"100"
		"wide"		"64"
		"tall"		"95"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/spec/shop_vac_bar_1"
	}
    
    "PeeIndicator"
    {
        "ControlName"	"ProgressBar"
		"fieldName"	"PeeIndicator"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"279" // 23
		"ypos"		"115"
		"wide"		"59"
		"tall"		"67"
        "direction" "north"
        "fg_image"		"vgui/hud/playerinfo/spec/pee_bar_2"
    }
    
    "PeeContur"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"PeeContur"
		"xpos"		"276" // 20
		"ypos"		"100"
		"wide"		"64"
		"tall"		"95"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/spec/pee_bar_1"
	}
    
    "GascanIndicator"
    {
        "ControlName"	"ProgressBar"
		"fieldName"	"GascanIndicator"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"276" // 20
		"ypos"		"112"
		"wide"		"64"
		"tall"		"78"
        "direction" "north"
        "fg_image"		"vgui/hud/playerinfo/spec/gascan_bar_2"
    }
    
    "GascanContur"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"GascanContur"
		"xpos"		"276" // 20
		"ypos"		"100"
		"wide"		"64"
		"tall"		"95"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/spec/gascan_bar_1"
	}
    
    "SprayIndicator"
    {
        "ControlName"	"ProgressBar"
		"fieldName"	"SprayIndicator"
		"visible"	"1"
		"enabled"	"1"
        "xpos"		"276" // 20
		"ypos"		"111"
		"wide"		"43"
		"tall"		"82"
        "direction" "north"
        "fg_image"		"vgui/hud/playerinfo/spec/spray_bar_2"
    }
    
    "SprayContur"
    {
        "ControlName"	"ImagePanel"
		"fieldName"	"SprayContur"
		"xpos"		"274" // 18
		"ypos"		"100"
		"wide"		"49"
		"tall"		"94"
        "visible"	"1"
		"enabled"	"1"
        "scaleImage" "1"
        "image"		"hud/playerinfo/spec/spray_bar_1"
	}
}
