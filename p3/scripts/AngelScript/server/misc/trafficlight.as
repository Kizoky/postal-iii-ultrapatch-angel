#include "../../utils.as"

// Less microlag when traffic lights are working - Kizoky
class CTrafficLight : IPostal3Script
{
	CP3SObj@ self;
	bool bCounted;
	array<CBaseEntity@> controllers;
	CTrafficLight(CP3SObj@ obj)
	{
		if (@obj != null)
			@self = @obj;
			
		bCounted = false;
	}
	
	void GatherControllers()
	{
		// Don't recount
		if (bCounted)
			return;
		
		bCounted = true;
		
		CBaseEntity@ pEnt = null;
		while ((@pEnt = gEntList.NextEnt(pEnt)) != @null)
		{
			if (FNameIs(pEnt, "trafficlight_logic*"))
			{
				controllers.insertLast(pEnt);
			}
		}
		
	}
	
	void DoLight(string light)
	{
		GatherControllers();
		
		for (uint i = 0; i < controllers.size(); i++)
		{
			if (@controllers[i] == @null)
				continue;
				
			controllers[i].FireInput("InValue", light);
			//Warning("Setting value\n");
		}
	}
	
	float TrafficRadius = 12000;
	
	void OnGreen()
	{
		//Warning("OnGreen\n");
		AreaEvent(self, "GreenLight", TrafficRadius);
		DoLight("green");
	}
	
	void OnYellow()
	{
		//Warning("OnYellow\n");
		DoLight("yellow");
	}
	
	void OnRed()
	{
		//Warning("OnRed\n");
		AreaEvent(self, "RedLight", TrafficRadius);
		DoLight("red");
	}
}