// Generic class to handle default behavior (make escorts glow)

[HIDDEN]
class CGlow_Generic : CGlowCore
{
	void OnSpawn(EHANDLE pEntity)
	{
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "mission_logic");
		if (@mission_logic == @null)
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (@ml == @null)
			return;
		
		CBaseEntity@ pEnt = pEntity.GetEntity();
		if (@pEnt == @null)
			return;
			
		CP3SObj@ p3s = pEnt.GetP3SObj();
		if (@p3s == @null)
			return;
		
		if (p3s.HasAttr("ea_escort"))
		{
			AttachGlow(pEnt, AllyColor());
		}
	}
	
	void DelayedApplyGlow()
	{
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "mission_logic");
		if (@mission_logic == @null)
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (@ml == @null)
			return;
		
		// Already applied
		if (ml.HasAttr("glow"))
			return;
			
		CBaseEntity@ pEnt = null;
		while ((@pEnt = gEntList.NextEnt(pEnt)) != @null)
		{
			CP3SObj@ p3s = @pEnt.GetP3SObj();
			if (@p3s == @null)
				continue;
			
			if (p3s.HasAttr("ea_escort"))
			{
				AttachGlow(pEnt, AllyColor());
				continue;
			}
			
			// This is just a rough guess, TM always makes NPCs hate the escorts or Players
			CP3SObj@ targ = p3s.GetTarget();
			if (@targ != @null)
			{
				if (targ.IsHate(p3s))
				{
					if (p3s.HasAttr("ea_escort"))
					{
						AttachGlow(pEnt, EnemyColor());
						continue;
					}
				}
			}
			
			CP3SObj@ player = GetPlayer();
			if (@player != @null)
			{
				if (p3s.IsHate(player))
				{
					AttachGlow(pEnt, EnemyColor());
				}
			}
		}
		
		// Apply glow to newly spawned entities from now on
		ml.SetAttr("glow", 1);
		
		// New spawns should have glow from now on
		bApplyGlowOnSpawn = true;
	}
	
	void OnFSMStart(EHANDLE pEntity)
	{
		CBaseEntity@ Ent = pEntity.GetEntity();
		if (@Ent == @null)
			return;
			
		CP3SObj@ p3s = Ent.GetP3SObj();
		if (@p3s == @null)
			return;
		
		if (p3s.HasAttr("ea_escort"))
		{
			AttachGlow(Ent, AllyColor());
			return;
		}
			
		CBaseEntity@ mission_logic = gEntList.FindEntByName(null, "mission_logic");
		if (@mission_logic == @null)
			return;
		
		CP3SObj@ ml = mission_logic.GetP3SObj();
		if (@ml == @null)
			return;
			
		// kill me
		CBaseEntity@ pEnt = null;
		while ((@pEnt = gEntList.NextEnt(pEnt)) != @null)
		{
			CP3SObj@ entP3S = @pEnt.GetP3SObj();
			if (@entP3S == @null)
				continue;
			
			if (entP3S.HasAttr("ea_escort"))
			{
				if (p3s.IsHate(entP3S))
				{
					//Warning("Applying glow for ea_escort hater\n");
					AttachGlow(Ent, EnemyColor());
					break;
				}
			}
		}
		
		CP3SObj@ player = GetPlayer();
		if (@player != @null)
		{
			if (p3s.IsHate(player))
			{
				//Warning("Applying glow for player hater\n");
				AttachGlow(Ent, EnemyColor());
			}
		}
	}
}