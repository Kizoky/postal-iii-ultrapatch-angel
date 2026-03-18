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
		if (pEnt.GetClassName() == "p3_npc_cat")
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
		array<CBaseEntity@> cats = gEntList.FindEntsByName("animal_cat");
		for (uint i = 0; i < cats.length(); i++)
		{
			AttachGlow(cats[i], CollectColor());
		}
		
		// Apply glow to newly spawned entities from now on
		mission_logic.GetP3SObj().SetAttr("glow", 1);
		
		// New spawns should have glow from now on
		bApplyGlowOnSpawn = true;
	}
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
}