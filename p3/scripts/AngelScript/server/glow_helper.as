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

// Glow shouldn't trigger on these maps, even the generic version one
array<string> blacklist = {
	"roam_"
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
		
		bool bBlacklist = false;
		
		// Check for blacklisted maps first...
		for (uint i = 0; i < blacklist.size(); i++)
		{
			if (map.findFirst(blacklist[i]) >= 0)
			{
				bBlacklist = true;
				break;
			}
		}
		
		if (bBlacklist)
		{
			Printf("P3 Glow: Map is blacklisted from having Glow System enabled.\n");
			return;
		}
		
		for (uint i = 0; i < supported_glow.size(); i++)
		{
			if (map == supported_glow[i])
			{
				bGlowSupported = true;
				
				class_format = FormatString("CGlow_%s", map);
				
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
		
		if (@cvar == @cv_glow)
		{
			// Added this check just to ensure we don't do delayed executions twice on start up
			if (gpGlobals.curtime > 3.0f)
			{
				if (cv_glow.GetInt() >= 1)
				{
					// TODO: Potentially causes duplicate delayed executions
					LevelInitPreEntity();
				}
				else
				{
					// Remove all the glow we spawned ourselves
					for (uint i = 0; i < glow_ents.size(); i++)
					{
						CBaseEntity@ ptr = glow_ents[i];
						if (@ptr == @null)
							continue;
						
						Remove(ptr);
					}
					
					glow_ents.removeRange(0, glow_ents.size());
					
					TimeUntilGlow = -1.0f;
					bGlowSupported = false;
					bApplyGlowOnSpawn = false;
				}
			}
		}
	}
	
	bool ShouldGlow()
	{
		if (cv_glow.GetBool() == false)
			return false;
		
		if (!bGlowSupported)
			return false;
		
		if (cv_glow_inst.GetInt() == 0)
		{
			if (gpGlobals.curtime < TimeUntilGlow)
				return false;
		}
		
		return true;
	}
	
	[HOOK SEngine OnEntitySpawn]
	void OnEntitySpawn(CBaseEntity@ pEntity)
	{	
		if (!ShouldGlow())
			return;
		
		if (bApplyGlowOnSpawn || cv_glow_inst.GetInt() == 1)
		{
			EHANDLE handle = pEntity;
			
			CreateContextClass(class_format, "OnSpawn", handle);
		}
	}
	
	[HOOK NPC OnFSMStart GLOBAL]
	void OnFSMStart()
	{
		if (!ShouldGlow())
			return;
		
		CP3SObj@ self = GetContextCaller();
		if (@self == @null)
			return;
			
		if (bApplyGlowOnSpawn || cv_glow_inst.GetInt() == 1)
		{
			EHANDLE handle = self.GetBaseEntity();
			// Only the generic class implements its own OnFSMStart function
			// but we do this anyway
			CreateContextClass(class_format, "OnFSMStart", handle);
		}
	}
}
