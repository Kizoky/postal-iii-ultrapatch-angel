
[HIDDEN]
class CGlowCore : IPostal3Script
{
	void AttachGlow(CBaseEntity@ Whom, string clr)
	{
		// Don't want to add hidden entities...
		if ((Whom.GetEffects() & EF_NODRAW) != 0)
			return;
		
		CBaseEntity@ glow = CreateEnt("p3_glow");
		if (@glow != @null)
		{
			glow.KeyValue("GlowColor", clr);
			glow.SetParent(Whom);
			
			Spawn(glow);
			glow.Activate();
		}
	}
	
	float spammy;
	void PrintInstructorHint(string caption, string onscreenicon, string offscreenicon, string targetentity, string timeout = "999999", string color = "yellow")
	{
		if (gpGlobals.curtime < 3.0f)
			return;
		
		if (spammy > gpGlobals.curtime)
			return;
			
		spammy = gpGlobals.curtime + 10.0f;
		
		CBaseEntity@ hintent = CreateEnt("env_instructor_hint");
		if (@hintent != null)
		{
			hintent.KeyValue( "hint_caption", caption );
			hintent.KeyValue( "hint_activator_caption", caption );
			
			hintent.KeyValue( "hint_icon_onscreen", onscreenicon );
			hintent.KeyValue( "hint_icon_offscreen", offscreenicon );
			
			if (color == "yellow")
				hintent.KeyValue( "hint_color", "252 255 0" );
			else if (color == "red")
				hintent.KeyValue( "hint_color", "255 0 0" );
			else
				hintent.KeyValue( "hint_color", color );
				
			hintent.KeyValue( "hint_target", targetentity );
			hintent.KeyValue( "hint_timeout", timeout );
				
			hintent.KeyValue( "hint_forcecaption", "1" );
			hintent.KeyValue( "hint_allow_nodraw_target", "1" );
			hintent.KeyValue( "hint_alphaoption", "0" );
			hintent.KeyValue( "hint_icon_offset", "0" );
			hintent.KeyValue( "hint_local_player_only", "0" );
			hintent.KeyValue( "hint_nooffscreen", "0" );
			hintent.KeyValue( "hint_pulseoption", "0" );
			hintent.KeyValue( "hint_range", "-1.0" );
			hintent.KeyValue( "hint_shakeoption", "0" );
			hintent.KeyValue( "hint_static", "0" );
			
			Spawn(hintent);
			hintent.Activate();
			
			hintent.FireInput( "ShowHint");
			
			Warning("SPAWNING INSTRUCTOR HINT\n");
		}
	}
	
	// Escort, must defend, etc...
	string AllyColor()
	{
		string clr = "200 200 200";
		return clr;
	}
	
	// Knock out, kill, etc...
	string EnemyColor()
	{
		string clr = "200 30 39";
		return clr;
	}
	
	string CollectColor()
	{
		string clr = "230 230 39";
		return clr;
	}
}