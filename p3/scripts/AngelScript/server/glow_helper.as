ConVar@ cv_glow = CreateCVar("p3_ultrapatch_gameplay_glow", "1", FCVAR_GAMEDLL | FCVAR_NOTIFY | FCVAR_ARCHIVE, "Creates glow around mission entities. (Requires restart)", true, true);
ConVar@ cv_glow_inst = CreateCVar("p3_ultrapatch_gameplay_glow_instant", "0", FCVAR_GAMEDLL | FCVAR_NOTIFY | FCVAR_ARCHIVE, "Whether glow should be created immediately for mission entities or not. (Requires restart)", true, true);

array<EHANDLE> glowEntities;

[HIDDEN]
class CGlowHelper : IPostal3Script
{
	bool bApplyGlowOnSpawn;
	bool bTicking;

	CGlowHelper()
	{
		bApplyGlowOnSpawn = cv_glow_inst.GetBool();
	}
	
	[HOOK SEngine OnCVarChanged]
	void OnCVarChanged(string name, string OldString, float OldValue, ConVar@ cvar)
	{
		// TODO: this doesn't work, no idea why
		if (@cvar == @cv_glow_inst)
		{
			if (cv_glow_inst.GetInt() == 1)
			{
				bApplyGlowOnSpawn = true;
			}
		}
	}
	
	// Level not yet shut down, entities are still here
	[HOOK SEngine LevelShutdownPreEntity]
	void LevelShutdownPreEntity()
	{
		glowEntities.removeRange(0, glowEntities.length());
	}
	
	[HOOK SEngine OnEntitySpawn]
	void OnEntitySpawn(CBaseEntity@ pEntity)
	{
		if (cv_glow.GetBool() == false)
			return;
		
		string funcFormat = "";
		string map = gpGlobals.mapname;
		
		if (bApplyGlowOnSpawn)
		{
			funcFormat.format("%s_OnSpawn", map);
			
			EHANDLE handle = pEntity;
			glowEntities.insertLast(handle);
			
			CreateContextClass("CGlowHelper", funcFormat, handle);
		}
		else
		{
			if (bTicking)
				return;
			
			bTicking = true;
			
			funcFormat.format("%s_ApplyGlow", map);
			
			// Apply glow effects after 2 minutes
			server.DelayedExecution(gpGlobals.curtime + (60.0f * 2), "CGlowHelper", funcFormat, null);
		}
	}
	
	void AttachGlow(CBaseEntity@ Whom, string clr)
	{
		CBaseEntity@ glow = CreateEnt("p3_glow");
		
		glow.KeyValue("GlowColor", clr);
		glow.SetParent(Whom);
		
		Spawn(glow);
		glow.Activate();
	}
	
	void PrintInstructorHint(string caption, string onscreenicon, string offscreenicon, string targetentity, string timeout = "12", string color = "yellow")
	{
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
			hintent.KeyValue( "hint_range", "500" );
			hintent.KeyValue( "hint_shakeoption", "0" );
			hintent.KeyValue( "hint_static", "0" );
			
			Spawn(hintent);
			hintent.Activate();
			
			hintent.FireInput( "ShowHint");
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
	
	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> pw <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	// TODO: use classes instead and have their own files, this will become a monstrosity later on
	void pw_OnSpawn(EHANDLE pEntity)
	{	
		if (gpGlobals.curtime < 3.0f)
			return;
		
		// Only pw has "pw_logic", rest of the missions have mission_logic
		CBaseEntity@ mission_logic = FindEntByName("pw_logic");
		if (@mission_logic == @null)
			return;
			
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (ml.GetCurPattern() == "pt_moms" || ml.GetCurState() == "st_phaze2")
		{
			CP3SObj@ ron = FindEntByName("ron").GetP3SObj();
			// Give Ron a white glow
			if (ron.HasAttr("glow") == false)
			{
				ron.SetAttr("glow", 1);
				AttachGlow(FindEntByName("ron"), AllyColor());
				PrintInstructorHint("Defend Ron", "icon_caution", "icon_alert", "ron");
			}
			
			CBaseEntity@ pEnt = pEntity.GetEntity();
			if (pEnt.GetName() == "mom")
			{
				AttachGlow(pEnt, EnemyColor());
			}
		}
	}
	
	void pw_ApplyGlow()
	{
		// Only pw has "pw_logic", rest of the missions have mission_logic
		CBaseEntity@ mission_logic = FindEntByName("pw_logic");
		if (@mission_logic == @null)
			return;
		
		// Already applied
		if (mission_logic.GetP3SObj().HasAttr("glow"))
			return;
		
		// wtf?
		if (bApplyGlowOnSpawn)
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (ml.GetCurPattern() == "pt_moms" || ml.GetCurState() == "st_phaze2")
		{
			CP3SObj@ ron = FindEntByName("ron").GetP3SObj();
			AttachGlow(FindEntByName("ron"), AllyColor());
			PrintInstructorHint("Defend Ron", "icon_caution", "icon_alert", "ron");
			
			array<CBaseEntity@> moms = FindEntsByName("mom");
			for (uint i = 0; i < moms.length(); i++)
			{
				AttachGlow(moms[i], EnemyColor());
			}
			
			// Apply glow to newly spawned entities from now on
			mission_logic.GetP3SObj().SetAttr("glow", 1);
			bApplyGlowOnSpawn = true;
		}
		else
		{
			// The walls are sure nice in this level
			server.DelayedExecution(gpGlobals.curtime + (60.0f * 1), "CGlowHelper", "pw_ApplyGlow", null);
		}
	}
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	
	
}