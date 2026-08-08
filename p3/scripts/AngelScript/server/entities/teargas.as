// p3_teargas - Kizoky

// The radius which the tear gas attempts to get nearby entities
float fTearGas_Radius = 154.0f;
// Threshold when NPCs are going to snooze
int iTearGas_Consc_Threshold = 30;
// The amount to increase per tick until threshold
int iTearGas_Consc_Incr = 5;

class CTearGas : IPostal3Script
{
	CP3SObj@ self;
	CBaseEntity@ be_self;
	
	// Thrown Tear Gas' owner
	CP3SObj@ owner;
	
	bool bVanishing;
	float flSafeInterval;
	
	CTearGas(CP3SObj@ obj)
	{
		@self = @obj;
		
		// casting
		@be_self = @self.GetBaseEntity();
		
		// owner's P3S pointer
		@owner = @be_self.GetOwnerEntity().GetP3SObj();
		
		bVanishing = false;
	}
	
	// Do something on spawn/init
	void OnSpawn()
	{
		//
	}
	
	// Do something on interval, maybe damage nearby NPCs
	void OnInterval()
	{	
		// Is it vanishing?
		if (bVanishing)
		{
			// Safe to do intervals until this time
			if (gpGlobals.curtime > flSafeInterval)
			{
				return;
			}
		}
		
		array<CP3SObj@>@ arr = GetArrayOfEntitiesSphere(be_self.WorldSpaceCenter(), fTearGas_Radius);
		for (uint i = 0; i < arr.length(); i++)
		{
			//Printf("'%s'\n", arr[i].GetBaseEntity().GetClassName());
			
			// Null
			if (@arr[i] == null)
				continue;
			
			// Got deleted at some point... not safe
			if (arr[i].IsValid() == false)
				continue;
			
			if (@arr[i] == @self)
				continue;
			
			// Owners shouldn't get affected
			if (@arr[i] == @owner)
				continue;
			
			// affects only NPCs or Players, items or props shouldn't sweat
			if (arr[i].IsNPC() == false /*&& arr[i].IsPlayer() == false*/)
				continue;
				
			// cool, do something about this entity
			AffectEntity(arr[i]);
		}
	}
	
	void OnVanish()
	{
		bVanishing = true;
		flSafeInterval = gpGlobals.curtime + 10.00f;
	}
	
	// The actual stuff that is being done to NPCs
	void AffectEntity(CP3SObj@ ent)
	{
		const string attr = "teargas_consc";
		
		int TearGasConsc = 0;
		TearGasConsc = ent.GetAttr(attr);
		
		//Printf("TearGasConsc: '%d'\n", TearGasConsc);
		
		// snoooooooze
		if (TearGasConsc >= iTearGas_Consc_Threshold)
		{
			// Set this to 0 just to make sure function doesn't trigger twice
			ent.SetAttr(attr, 0);
			ent.KnockOut(owner);
			return;
		}
		
		ent.FireEvent("OnSprayStunned", owner);
		
		TearGasConsc += iTearGas_Consc_Incr;
		ent.SetAttr(attr, TearGasConsc);
	}
}