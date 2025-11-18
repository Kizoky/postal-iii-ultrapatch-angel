const string nb_default_model = "models/Characters/M_Avg_Postal_Dude_v2/m_avg_postal_dude_v2.mdl";

// NPC version of Nextbots - Kizoky
class CDefaultNextBot : IPostal3Script
{
	CP3SObj@ self;
	CBaseEntity@ be_self;
	
	CDefaultNextBot(CP3SObj@ obj)
	{
		@self = @obj;
		
		// casting
		@be_self = @self.GetBaseEntity();
	}
	
	void Spawn()
	{
		be_self.SetModel(nb_default_model);
		be_self.SetSkin(1);
	}
	
	void Precache()
	{
		PrecacheModel(nb_default_model);
	}
}

class CDefaultNextBot_Action : IPostal3Script
{
	CP3SObj@ self;
	
	PathFollower@ m_path;
	CountdownTimer@ m_timer;
	
	CDefaultNextBot_Action(CP3SObj@ obj)
	{
		@self = @obj;
		
		@m_path = CreatePathFollower();
		@m_timer = CreateCountdownTimer();
	}
	
	void OnStart()
	{
		Printf("OnStart\n");
		
		m_path.SetMinLookAheadDistance(300.0f);
	}
	
	void Update(CNextBot@ me, float interval)
	{
		if (m_path.IsValid() && !m_timer.IsElapsed())
		{
			// PathFollower::Update() moves the bot along the path using the bot's ILocomotion and IBody interfaces
			m_path.Update(me);
		}
		else
		{
			//SelectNthAreaFunctor pick(RandomInt(0, TheNavMesh->GetNavAreaCount() - 1));
			//TheNavMesh->ForAllAreas(pick);
			//
			//if (pick.m_area)
			//{
			//	CWJNextBotPathCost cost(me);
			//	m_path.Compute(me, pick.m_area->GetCenter(), cost);
			//}
			
			if (me.ChooseRandomPath(m_path) == true)
			{
				// follow this path for a random duration (or until we reach the end)
				m_timer.Start(RandomFloat(5.0f, 10.0f));
			}
		}
	}
	
	void OnContact()
	{
		Printf("Watch where you are going\n");
	}
	
	void OnStuck()
	{
		m_path.Invalidate();
	}
	
	void OnNavAreaChanged() {}

}