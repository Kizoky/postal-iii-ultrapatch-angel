const string AID_KIT_ITEM = "angel::pizza";

// TODO: could probably be generalized
class Interactable_AidKit : IPostal3Script
{
	CP3SObj@ self;
	
	array<Vector> kitPos;
	array<QAngle> kitAng;
	
	bool bOpen;
	
	Interactable_AidKit(CP3SObj@ obj)
	{
		@self = obj;
	}
	
	void Setup()
	{
		server.DelayedExecution(0, "Interactable_AidKit", "DoSetup", self);
	}
	
	// TODO: something goes horribly wrong during game init
	void DoSetup()
	{
		CBaseEntity@ baseEnt = @self.GetBaseEntity();
		
		// Set a new name for the entity if there's not one already
		string name; name = baseEnt.GetName();
		
		if (name.length() <= 0)
		{
			string newName; newName.format("aidkit_auto_%d", baseEnt.GetEntIndex());
			
			baseEnt.SetName(newName);
			
			//name = newName;
		}
	}
	
	void OnUseCommand()
	{
		// no no cabron
		if (bOpen)
			return;
			
		bOpen = true;
		
		CBaseEntity@ baseEnt = @self.GetBaseEntity();
		
		// Store positions for aid kit, so positions and the quantity can be randomized
		int num = 1;
		for (uint i = 0; i < 6; i++)
		{
			string attachee;
			attachee.format("item%d", num++);
			
			Vector vecTemp;
			QAngle angTemp;
			
			baseEnt.GetAttachment(baseEnt.LookupAttachment(attachee), vecTemp, angTemp);
			
			kitPos.insertLast(vecTemp);
			kitAng.insertLast(angTemp);
		}
		
		baseEnt.SetPropAnim("open");
		
		for (uint i = 0; i < kitPos.length(); i++)
		{
			// lock in place
			CBaseEntity@ itm = CreateInventoryItem(AID_KIT_ITEM, true);
			
			itm.SetAbsOrigin(kitPos[i]);
			itm.SetAbsAngles(kitAng[i]);
			
			Spawn(itm);
			itm.Activate();
		}
		
	}
}