#include "glow/glow_core.as"

// Generic
#include "glow/generic.as"

// Pre-path
#include "glow/pw.as"
#include "glow/dcr.as"

// Insane path
#include "glow/sbe.as"

// supported maps
array<string> supported_glow = {
// Pre-path
"pw",
"dcr",

// Insane path
"sbe" // escort
};

bool bApplyGlowOnSpawn;

[HIDDEN]
class CGlowHelper : IPostal3Script
{
	bool bGlowSupported;

	float TimeUntilGlow;
	
	string class_format;
	
	CGlowHelper()
	{
		//bApplyGlowOnSpawn = cv_glow_inst.GetBool();
		TimeUntilGlow = -1.0f;
	}
	
	// Level loaded, but before entities spawned in
	[HOOK SEngine LevelInitPreEntity]
	void LevelInitPreEntity()
	{
		// Check for glow support
		TimeUntilGlow = -1.0f;
		bGlowSupported = false;
		bApplyGlowOnSpawn = false;
		
		if (cv_glow.GetBool() == false)
			return;
		
		string map = gpGlobals.mapname;
		map.toLower();
		for (uint i = 0; i < supported_glow.size(); i++)
		{
			if (map == supported_glow[i])
			{
				bGlowSupported = true;
				class_format.format("CGlow_%s", map);
				
				break;
			}
		}
		
		// Make a fallback to the generic class
		if (!bGlowSupported)
		{
			bGlowSupported = true;
			class_format = "CGlow_Generic";
		}
		
		if (bGlowSupported)
		{
			// not instantenous
			if (cv_glow_inst.GetInt() == 0)
			{
				// Apply glow effects after 2 minutes
				TimeUntilGlow = gpGlobals.curtime + (60.0f * 2);
				
				server.DelayedExecution(TimeUntilGlow, class_format, "DelayedApplyGlow", null);
			}
			else
			{
				bApplyGlowOnSpawn = true;
			}
		}
	}
	
	[HOOK SEngine OnCVarChanged]
	void OnCVarChanged(string name, string OldString, float OldValue, ConVar@ cvar)
	{
		if (@cvar == @cv_glow_inst)
		{
			if (cv_glow_inst.GetInt() >= 1)
			{
				TimeUntilGlow = -1.0f;
				bApplyGlowOnSpawn = true;
			}
		}
	}
	
	[HOOK SEngine OnEntitySpawn]
	void OnEntitySpawn(CBaseEntity@ pEntity)
	{	
		if (cv_glow.GetBool() == false)
			return;
			
		if (!bGlowSupported)
			return;
		
		if (cv_glow_inst.GetInt() == 0)
		{
			if (gpGlobals.curtime < TimeUntilGlow)
				return;
		}
		
		if (bApplyGlowOnSpawn || cv_glow_inst.GetInt() == 1)
		{
			EHANDLE handle = pEntity;
			
			CreateContextClass(class_format, "OnSpawn", handle);
		}
	}
	
	[HOOK NPC OnFSMStart GLOBAL]
	void OnFSMStart()
	{
		if (cv_glow.GetBool() == false)
			return;
		
		CP3SObj@ self = GetContextCaller();
		if (@self == @null)
			return;
			
		if (!bGlowSupported)
			return;
		
		if (cv_glow_inst.GetInt() == 0)
		{
			if (gpGlobals.curtime < TimeUntilGlow)
				return;
		}
			
		if (bApplyGlowOnSpawn || cv_glow_inst.GetInt() == 1)
		{
			EHANDLE handle = self.GetBaseEntity();
			CreateContextClass(class_format, "OnFSMStart", handle);
		}
	}
}
