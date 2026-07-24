class NPCUtils : IPostal3Script
{
	CP3SObj@ self;
	
	NPCUtils(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	void TargetClosestLivingNPC()
	{
		float dist = 99999999.0f;
		CP3SObj@ targ = null;
		
		array<CP3SObj@> aNPC = GetArrayOfEntitiesRadius(@self, 1024.0f);
		for (uint i = 0; i < aNPC.length(); i++)
		{
			if ( @aNPC[i] == @null )
				continue;
	
			if ( @aNPC[i] == @self )
				continue;
	
			//if ( aNPC[i].IsCorpse() )
				//continue;
			
			if ( aNPC[i].IsNPC() == false ) //&& aNPC[i].IsPlayer() == false)
				continue;
				
			CBaseEntity@ ent = @aNPC[i].GetBaseEntity();
			if (@ent == @null)
				continue;
				
			if ((ent.GetEffects() & EF_NODRAW) == 0)
				continue;
				
			float check = CalcDistance(aNPC[i], self);
			if (dist > check)
			{
				dist = check;
				@targ = @aNPC[i];
			}
		}
		
		self.SetTarget(targ);
	}
	
	void TargetClosestLiving()
	{
		float dist = 99999999.0f;
		CP3SObj@ targ = null;
		
		array<CP3SObj@> aNPC = GetArrayOfEntitiesRadius(@self, 1024.0f);
		for (uint i = 0; i < aNPC.length(); i++)
		{
			if ( @aNPC[i] == @null )
				continue;
	
			if ( @aNPC[i] == @self )
				continue;
	
			//if ( aNPC[i].IsCorpse() )
				//continue;
			
			if ( aNPC[i].IsNPC() == false && aNPC[i].IsPlayer() == false)
				continue;
				
			CBaseEntity@ ent = @aNPC[i].GetBaseEntity();
			if (@ent == @null)
				continue;
				
			if ((ent.GetEffects() & EF_NODRAW) == 0)
				continue;
				
			float check = CalcDistance(aNPC[i], self) / 16;
			if (dist > check)
			{
				dist = check;
				@targ = @aNPC[i];
			}
		}
		
		self.SetTarget(targ);
	}
	
	void TargetClosestCorpse()
	{
		float dist = 99999999.0f;
		CP3SObj@ targ = null;
		
		array<CP3SObj@> aNPC = GetArrayOfEntitiesRadius(@self, 1024.0f);
		for (uint i = 0; i < aNPC.length(); i++)
		{
			if ( @aNPC[i] == @null )
				continue;
	
			if ( @aNPC[i] == @self )
				continue;
	
			if ( !aNPC[i].IsCorpse() )
				continue;
			
			CBaseEntity@ ent = @aNPC[i].GetBaseEntity();
			if (@ent == @null)
				continue;
				
			if ((ent.GetEffects() & EF_NODRAW) == 0)
				continue;
			
			float check = CalcDistance(aNPC[i], self) / 16;
			if (dist > check)
			{
				dist = check;
				@targ = @aNPC[i];
			}
		}
		
		self.SetTarget(targ);
	}
	
	void TargetClosestWeapon()
	{
		float dist = 99999999.0f;
		CP3SObj@ targ = null;
		
		array<CP3SObj@> aNPC = GetArrayOfEntitiesRadius(@self, 1024.0f);
		for (uint i = 0; i < aNPC.length(); i++)
		{
			if ( @aNPC[i] == @null )
				continue;
	
			if ( @aNPC[i] == @self )
				continue;
	
			if ( !aNPC[i].IsWeapon() )
				continue;
				
			CBaseEntity@ ent = @aNPC[i].GetBaseEntity();
			if (@ent == @null)
				continue;
				
			if ((ent.GetEffects() & EF_NODRAW) == 0)
				continue;
				
			if (aNPC[i].GetAttr("active") == 1 && aNPC[i].GetAttr("dropped") == 1)
			{
				float check = CalcDistance(aNPC[i], self) / 16;
				if (dist > check)
				{
					dist = check;
					@targ = @aNPC[i];
				}
			}
		}
		
		self.SetTarget(targ);
	}
	
	void ForceAttack()
	{
		Vector endpos;
		CBaseEntity@ atk = GetCrosshair(GetPlayer(), endpos);
		
		CP3SObj@ attacker = atk.GetP3SObj();
		
		attacker.SetTarget(GetPlayer());
		
		attacker.ExecuteAction("Hit", "1");
	}
	
	void GiveWeapon(string param)
	{
		CBaseEntity@ weapon = CreateEnt(param);
		if (@weapon == @null)
			return;
			
		// Player might be able to pick this up lol
		//CBaseEntity@ pSelf = self.GetBaseEntity();
		//weapon.SetAbsOrigin(pSelf.GetAbsOrigin());
			
		::Spawn(weapon);
		
		CP3SObj@ p3s = weapon.GetP3SObj();
		
		self.SetTarget(p3s);
		
		self.ExecuteAction("Weapon", "pickup");
	}
}