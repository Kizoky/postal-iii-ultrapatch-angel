///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"216 216 216 255"
		"DullWhite"			"142 142 142 255"
		"OffWhiteTransp"	"216 216 216 128"
		"Orange"			"255 155 0 255"
		"TransparentBlack"	"0 0 0 218"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"200 200 200 196"	// the lit side of a control
		Border.Dark						"40 40 40 196"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 196"			// the additional border color for displaying the default/selected button

		Button.TextColor				"White"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"White"
		Button.ArmedBgColor				"Blank"				[$WIN32]
		Button.ArmedBgColor				"190 115 0 255"		[$X360]
		Button.DepressedTextColor		"White"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"160 160 160 128"	[$WIN32]
		Frame.BgColor					"80 80 80 192"		[$X360]
		Frame.OutOfFocusBgColor			"160 160 160 32"	[$WIN32]
		Frame.OutOfFocusBgColor			"80 80 80 192"		[$X360]
		Frame.FocusTransitionEffectTime	"0.0"							// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.0"				[$WIN32]	// time it takes for a window to fade in/out on open/close
		Frame.TransitionEffectTime		"0.0"				[$X360]		// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"UiBold"		[$WIN32]
		FrameTitleBar.Font				"DefaultLarge"	[$WIN32]
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"OffWhite"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"117 117 117 255"
		Label.DisabledFgColor2			"30 30 30 255"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"TransparentBlack"
		Panel.BackgroundType			4

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"
        
        CircularProgressBar.FgColor "255 255 255 255"
        CircularProgressBar.BgColor "255 255 255 255"
	}
	
	////////////////////////CUSTOM  FONTS /////////////////////////////
	CustomFontFiles
	{
		"1"		"resource/soup.ttf"
	}
	////////////////////////CUSTOM  FONTS /////////////////////////////

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
	
		"Default"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"16"
				"weight"	"500"
				"antialias" "1"
				"custom"	"1"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"16"
				"weight"	"1000"
				"antialias" "1"
				"custom"	"1"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
				"custom"	"1"
			}
		}
		"MissionLogSmall"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"19"
				"weight"	"500"
				"antialias" "1"
				"custom"	"1"
			}
		}
        
        "MissionLogBig"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"22"
				"weight"	"550"
				"antialias" "1"
				"custom"	"1"
			}
		}
        
		"DefaultLarge"
		{
			"1"
			{
				"name"		"soup"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
			}
		}
		
	}

}
