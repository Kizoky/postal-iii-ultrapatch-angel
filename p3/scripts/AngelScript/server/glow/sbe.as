// dcr

[HIDDEN]
class CGlow_sbe : CGlowCore
{
	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> sbe <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	void OnSpawn(EHANDLE pEntity)
	{	
		//if (gpGlobals.curtime < 3.0f)
			//return;
		
		CBaseEntity@ mission_logic = FindEntByName("mission_logic");
		if (@mission_logic == @null)
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (@ml == @null)
			return;
			
		if (ml.HasAttr("glow"))
			return;
		
		CBaseEntity@ pEnt = pEntity.GetEntity();
		if (pEnt.GetName() == "npc_slave")
		{
			AttachGlow(pEnt, AllyColor());
			
			ml.SetAttr("glow", 1);
			
			// There's no need to apply any more glows
			bApplyGlowOnSpawn = false;
		}
	}
	
	void DelayedApplyGlow()
	{
		CBaseEntity@ mission_logic = FindEntByName("mission_logic");
		if (@mission_logic == @null)
			return;
		
		// Already applied
		if (mission_logic.GetP3SObj().HasAttr("glow"))
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
			
		// Gather every cat
		CBaseEntity@ slave = FindEntByName("npc_slave");
		if (slave.GetName() == "npc_slave")
		{
			AttachGlow(slave, AllyColor());
		}
		
		// Apply glow to newly spawned entities from now on
		mission_logic.GetP3SObj().SetAttr("glow", 1);
		
		// New spawns should have glow from now on
		bApplyGlowOnSpawn = false;
	}
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
}