// pw

class CGlow_pw : CGlowCore
{
	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> pw <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	void OnSpawn(EHANDLE pEntity)
	{	
		if (gpGlobals.curtime < 3.0f)
			return;
		
		// Only pw has "pw_logic", rest of the missions have mission_logic
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "pw_logic");
		if (@mission_logic == @null)
			return;
			
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (ml.GetCurPattern() == "pt_moms" || ml.GetCurState() == "st_phaze2")
		{
			CP3SObj@ ron = gEntList.FindEntByName(null, "ron").GetP3SObj();
			// Give Ron a white glow
			if (ron.HasAttr("glow") == false)
			{
				ron.SetAttr("glow", 1);
				AttachGlow(gEntList.FindEntByName(null, "ron"), AllyColor());
				PrintInstructorHint("Defend Ron", "icon_caution", "icon_alert", "ron");
			}
			
			CBaseEntity@ pEnt = pEntity.GetEntity();
			if (pEnt.GetName() == "mom")
			{
				AttachGlow(pEnt, EnemyColor());
			}
		}
	}
	
	void DelayedApplyGlow()
	{
		// Only pw has "pw_logic", rest of the missions have mission_logic
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "pw_logic");
		if (@mission_logic == @null)
			return;
		
		// Already applied
		if (mission_logic.GetP3SObj().HasAttr("glow"))
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (ml.GetCurPattern() == "pt_moms" || ml.GetCurState() == "st_phaze2")
		{
			CP3SObj@ ron = gEntList.FindEntByName(null, "ron").GetP3SObj();
			AttachGlow(gEntList.FindEntByName(null, "ron"), AllyColor());
			PrintInstructorHint("Defend Ron", "icon_caution", "icon_alert", "ron");
			
			// Gather every hockey mom and attach glow onto them
			array<CBaseEntity@> moms = gEntList.FindEntsByName("mom");
			for (uint i = 0; i < moms.length(); i++)
			{
				AttachGlow(moms[i], EnemyColor());
			}
			
			// Apply glow to newly spawned entities from now on
			mission_logic.GetP3SObj().SetAttr("glow", 1);
			
			// New spawns should have glow from now on
			bApplyGlowOnSpawn = true;
		}
		else
		{
			// The walls are sure nice in this level
			server.DelayedExecution(gpGlobals.curtime + (60.0f * 1), "CGlow_pw", "DelayedApplyGlow", null);
		}
	}
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
}