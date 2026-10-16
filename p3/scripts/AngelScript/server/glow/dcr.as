// dcr

[HIDDEN]
class CGlow_dcr : CGlowCore
{
	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> dcr <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	void OnSpawn(EHANDLE pEntity)
	{	
		if (gpGlobals.curtime < 3.0f)
			return;
		
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "mission_logic");
		if (@mission_logic == @null)
			return;
			
		CBaseEntity@ pEnt = pEntity.GetEntity();
		if (pEnt.GetClassname() == "p3_npc_cat")
		{
			AttachGlow(pEnt, CollectColor());
		}
	}
	
	void DelayedApplyGlow()
	{
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "mission_logic");
		if (@mission_logic == @null)
			return;
		
		// Already applied
		if (mission_logic.GetP3SObj().HasAttr("glow"))
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
			
		// Gather every cat
		array<CBaseEntity@>@ cats = gEntList.FindEntsByName("animal_cat");
		for (uint i = 0; i < cats.length(); i++)
		{
			AttachGlow(cats[i], CollectColor());
		}
		
		// Apply glow to newly spawned entities from now on
		mission_logic.GetP3SObj().SetAttr("glow", 1);
		
		// New spawns should have glow from now on
		bApplyGlowOnSpawn = true;
	}
	
	void AttachGlow(CBaseEntity@ Whom, string clr)
	{
		// Check for dervish cats specifically, since base attachglow 
		// will return from it since they are hidden while the effect is active
		CP3SObj@ ptr = @Whom.GetP3SObj();
		if (@ptr != @null)
		{
			if (ptr.GetAttr("ea_dervish") == 1)
			{
				AddGlowEntity(Whom, clr);
				return;
			}
		}
	
		BaseClass::AttachGlow(Whom, clr);
	}
	
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
}