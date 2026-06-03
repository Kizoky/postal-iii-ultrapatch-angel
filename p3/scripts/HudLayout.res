"Resource/HudLayout.res"
{
	HudMessage
	{
		"fieldName" "HudMessage"
		"visible" "1"
		"enabled" "1"
		"wide"	 "f0"
		"tall"	 "480"
	}
	
	HudVoiceSelfStatus
	{
		"fieldName" "HudVoiceSelfStatus"
		"visible" "1"
		"enabled" "1"
		"xpos" "r43"
		"ypos" "355"
		"wide" "24"
		"tall" "24"
		"zpos" "2"
	}

	HudVoiceStatus
	{
		"fieldName" "HudVoiceStatus"
		"visible" "1"
		"enabled" "1"
		"xpos" "r145"
		"ypos" "0"
		"wide" "145"
		"tall" "400"
		"zpos" "1"

		"item_wide"	"135"
		
		"show_avatar"		"0"
		
		"show_dead_icon"	"0"
		"dead_xpos"			"1"
		"dead_ypos"			"0"
		"dead_wide"			"16"
		"dead_tall"			"16"
		
		"show_voice_icon"	"1"
		"icon_ypos"			"0"
		"icon_xpos"			"15"
		"icon_tall"			"16"
		"icon_wide"			"16"
		
		"text_xpos"			"33"
	}
	
	ScorePanel
	{
		"fieldName" "ScorePanel"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	"CRHudDeathNotice"
	{
		"fieldName" "CRHudDeathNotice"
		"visible" "1"
		"enabled" "1"
		"xpos"	 "r640"
		"ypos"	 "12"
		"wide"	 "628"
		"tall"	 "468"

		"MaxDeathNotices" "8"
		"LineHeight"	  "22"
		"RightJustify"	  "1"	// If 1, draw notices from the right
		
		//"TextFont"				"CR_HudHintSmall"
	}

	"HudChat"
	{
		"ControlName"		"EditablePanel"
		"fieldName" 		"HudChat"
		"visible" 		"1"
		"enabled" 		"1"
		"xpos"			"10"
		"ypos"			"275"
		"wide"	 		"320"
		"tall"	 		"120"
		"PaintBackgroundType"	"2"
	}

	"TargetID"
	{
		"fieldName" "TargetID"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudWeaponHint
	{
		"fieldName"	           "HudWeaponHint"
		"xpos"	               "16"
		"ypos"	               "r20"
		"wide"	               "128"
		"tall"                 "100"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"fade-in"              "ShowHudWeaponHint"
		"delay"                "3"
		"fade-out"             "HideHudWeaponHint"
        "NumberFont"           "HudNumbersSmall"
	}

    HudSuit
	{
		"fieldName"		"HudSuit"
		"xpos"	"140"
		"ypos"	"432"
		"wide"	"108"
		"tall"  "36"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		
		"text_xpos" "8"
		"text_ypos" "20"
		"digit_xpos" "50"
		"digit_ypos" "2"
	}
	
    HudKarmaMeter
    {
    	"fieldName"	           "HudKarmaMeter"
        "ControlName"          "HudKarmaMeter"
		"xpos"	               "r74"
		"ypos"	               "10"
		"wide"	               "64"
		"tall"                 "64"
		"visible"              "0"
		"enabled"              "1"
		"paintbackground"      "0"
    }

    "NotifyIcon"
	{
        "ControlName"	"ImagePanel"
		"fieldName"	"NotifyIcon"
		"xpos"		"r64"
		"ypos"		"4"
		"wide"		"64"
		"tall"		"64"
		"image"		"hud/ExplMark.vtf"
		"scaleImage" "1"
        "visible"	"1"
		"enabled"	"1"
        "proportional" "0"
	}
    
    "HudUnsnatchHelper"
    {
        "ControlName"	"HudUnsnatchHelper"
		"fieldName"	"HudUnsnatchHelper"
        "xpos" "c-32"
        "ypos" "c-64"
		"wide"		"64"
		"tall"		"128"
        "visible"	"1"
		"enabled"	"1"
        "PaintBackgroundType" "0"
        "paintbackground" "0"
	}
    
	HudHealth
	{
		"fieldName"		"HudHealth"

		// ������� � ������ ������ ��������
		"xpos"	"24"
		"ypos"	"420"
		"wide"	"140"
		"tall"  "60"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		// ������� ������
		"TextFont" "HudNumbers"
		"text_xpos" "2"
		"text_ypos" "8"

		// ������� ����
		"digit_xpos" "42"
		"digit_ypos" "0"
	}
	
	HudAmmo
	{
		"fieldName" "HudAmmo"
		"xpos"	"r200"
		"ypos"	"420"
		"wide"	"200"
		"tall"  "100"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"
		
		// ������
		"icon_xpos"	"0"
		"icon_ypos" "0"
		"icon_wide" "100"
		"icon_tall" "100"

		// �������
		"digit_xpos" "24"
		"digit_ypos" "0"

		// ����
		"TextFont" "HudNumbers"
		"text_xpos" "90"
		"text_ypos" "0"

		// ������
		"SmallNumberFont" "HudNumbers"
		"digit2_xpos" "110"
		"digit2_ypos" "0"
	}

	HudDamageIndicator
	{
		"fieldName" "HudDamageIndicator"
		"visible" "1"
		"enabled" "1"
		"DmgColorLeft" "255 0 0 0"
		"DmgColorRight" "255 0 0 0"
		"DmgHighColorLeft" "255 0 0 0"
		"DmgHighColorRight" "255 0 0 0"
		"DmgFullscreenColor" "255 0 0 0"
		
		"dmg_xpos" "10"
		"dmg_ypos" "80"
		"dmg_wide" "30"
		"dmg_tall1" "300"
		"dmg_tall2" "240"
	}


	HudWeaponSelection
	{
		"fieldName" "HudWeaponSelection"
		"ypos" 	"10"	[$WIN32]
		"ypos" 	"20"	[$X360]
		"visible" "1"
		"enabled" "1"
		"Arrows" 		"arrows"
		"RightArrow" 	"right_arrow"
		"DownArrow" 	"down_arrow"
		"XWeaponOffset" "0"
		"YWeaponOffset" "35"
		"XItemOffset" "35"
		"YItemOffset" "120"
		"SelectedScale"		"1.0"
		"SelectedItemScale"		"1.0"
		"SmallBoxSize" "128"
		"LargeBoxWide" "60"
		"LargeBoxTall" "60"
		"MediumBoxWide" "50"
		"MediumBoxTall" "50"
		"BoxGap" "0"
		"BoxColor" "0 0 0 80"
		"SelectedBoxColor" "0 0 0 120"
		"WeaponBoxOffset" "20"
		"SelectionNumberXPos" "4"
		"SelectionNumberYPos" "4"
		"SelectionGrowTime"	"0.4"
		"TextYPos" "64"
	}

	

	HudDeathNotice
	{
		"fieldName" "HudDeathNotice"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}


	HudHistoryResource
	{
		"fieldName" "HudHistoryResource"
		"visible" "1"
		"enabled" "1"
		"xpos"	"22"
		"ypos"	"r320"
		"wide"	 "248"
		"tall"	 "320"

		"history_gap"	"56"
		"icon_inset"	"28"
		"text_inset"	"26"
		"NumberFont"	"HudNumbersSmall"
	}



	HudWeapon
	{
		"fieldName" "HudWeapon"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	HudAnimationInfo
	{
		"fieldName" "HudAnimationInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudPredictionDump
	{
		"fieldName" "HudPredictionDump"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}





	HudCredits
	{
		"fieldName"	"HudCredits"
		"TextFont"	"Default"
		"visible"	"1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"	"480"
		"TextColor"	"255 255 255 192"

	}
	
    
    HudCrosshair
	{
		"fieldName" "HudCrosshair"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
    
	HUDAutoAim
	{
		"fieldName" "HUDAutoAim"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	
	
	HudHDRDemo
	{
		"fieldName" "HudHDRDemo"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"  "480"
		"visible" "1"
		"enabled" "1"
		
		"Alpha"	"255"
		"PaintBackgroundType"	"2"
		
		"BorderColor"	"0 0 0 255"
		"BorderLeft"	"16"
		"BorderRight"	"16"
		"BorderTop"		"16"
		"BorderBottom"	"64"
		"BorderCenter"	"0"
		
		"TextColor"		"255 255 255 255"
		"LeftTitleY"	"422"
		"RightTitleY"	"422"
	}

	AchievementNotificationPanel	
	{
		"fieldName"				"AchievementNotificationPanel"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"180"
		"wide"					"f10"	[$WIN32]
		"wide"					"f60"	[$X360]
		"tall"					"100"
	}

    "HudPlayerInfo"
    {
        "fieldName"	"HudPlayerInfo"
		"enabled"	"1"
        "wide"			"512"
		"tall"			"256"
        "visible"       "1"
        
    }
	
	GeneralMessageChannel
	{
		"fieldName"	           "GeneralMessageChannel"
		"xpos"	               "0"
		"ypos"	               "0"
		"wide"	               "500"
		"tall"                 "100"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "north"
		"fgcolor"              "FgColor"
		"font"                 "Default"
		"channel"              "$general"
		"fade-in"              "ShowGeneralMessagePanel"
		"delay"                "2"
		"fade-out"             "HideGeneralMessagePanel"
	}


	NPCMessageChannel
	{
		"fieldName"	           "NPCMessageChannel"
		"xpos"	               "0"
		"ypos"	               "0"
		"wide"	               "500"
		"tall"                 "100"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "south"
		"fgcolor"              "FgColor"
		"font"                 "Default"
		"channel"              "$npc"
		"fade-in"              "ShowNPCMessagePanel"
		"delay"                "2"
		"fade-out"             "HideNPCMessagePanel"
	}

	P3MissionChannel
	{
		"fieldName"	           "P3MissionChannel"
		"xpos"	               "c-250"
		"ypos"	               "170"
		"wide"	               "500"
		"tall"                 "200"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "north"
		"fgcolor"              "180 0 0 255"
        "bgcolor"              "0 0 0 140"
        "font"                 "DefaultBold"
		"channel"              "$P3Mission"
		"fade-in"              "ShowP3MissionChannel"
		"delay"                "15"
		"fade-out"             "HideP3MissionChannel"
	}

	P3KarmaChannel
	{
		"fieldName"	           "P3KarmaChannel"
		"xpos"	               "c-100"
		"ypos"	               "150"
		"wide"	               "500"
		"tall"                 "100"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "north"
		"fgcolor"              "180 0 0 255"
		"fgcolor"              "0 0 0 255"
		"font"                 "p3_test_font"
		"channel"              "$P3Karma"
		"fade-in"              "ShowP3KarmaChannel"
		"delay"                "4"
		"fade-out"             "HideP3KarmaChannel"
	}

	P3DebugChannel
	{
		"fieldName"	           "P3DebugChannel"
		"xpos"	               "c-150"
		"ypos"	               "c-150"
		"wide"	               "300"
		"tall"                 "100"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "north"
		"fgcolor"              "255 255 0 255"
		"font"                 "p3_test_font"
		"channel"              "$P3Debug"
		"fade-in"              "ShowP3DebugChannel"
		"delay"                "2"
		"fade-out"             "HideP3DebugChannel"
	}
	
	P3HelperChannel
	{
		"fieldName"	           "P3HelperChannel"
		"xpos"	               "180"
		"ypos"	               "r+340"
		"wide"	               "550"
		"tall"                 "320"
		"visible"              "1"
		"enabled"              "1"
		"paintbackground"      "0"
		"textAlignment"        "south-west"
		"fgcolor"              "180 180 0 255"
        "font"                 "DefaultBold"
        "bgcolor"              "0 0 0 170"
		"channel"              "$P3Helper"
		"fade-in"              "ShowP3HelperChannel"
		"delay"                "15"
		"fade-out"             "HideP3HelperChannel"
	}
	
	
}
