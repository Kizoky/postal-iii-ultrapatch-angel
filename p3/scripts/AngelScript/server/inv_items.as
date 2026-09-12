// This class should be used on the player, NOT the item itself

const int PIZZA_USE = 5;
const int PISSY_PIZZA_USE = 1;

class CAngelItems : IPostal3Script
{
	CP3SObj@ self;
	
	CAngelItems(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	void Heal(int new_health)
	{
		self.SetAttr("ea_health", new_health);
	}
	
	int CalcPizza(int health_incr)
	{
		int max_health = self.GetAttr("ea_maxhealth");
		
		int old_health = self.GetAttr("ea_health");
		
		int new_health = old_health + health_incr;
		
		// Used some sort of drug
		if (old_health >= max_health)
			return old_health;
			
		if (new_health > 100)
			new_health = 100;
			
		//Warning("OLD: %d NEW: %d\n", old_health, new_health);
			
		return new_health;
	}
	
	void OnPizzaUse()
	{
		int nu_health = CalcPizza(PIZZA_USE);
		
		Heal(nu_health);
	}
	
	void OnPissyPizzaUse()
	{
		int nu_health = CalcPizza(PISSY_PIZZA_USE);
		
		Heal(nu_health);
	}
	
	void OnStatsUse()
	{
		CP3Player@ pPlayer = cast<CP3Player@>(self.GetBaseEntity());
		
		server.ClientCommand("p3_ultrapatch_stats_open 1\n", pPlayer);
	}
}