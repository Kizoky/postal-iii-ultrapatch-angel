// All NPCs
class NPC : IPostal3Script
{
	CP3SObj@ self;
	NPC(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	void Event_Killed(CTakeDamageInfo@ info)
	{
		
	}
	
	void OnTakeDamage(CTakeDamageInfo@ info)
	{
		// I'm leaving this here as an example, you're welcome! - Kizoky
		/*
		if (@self == null)
			return;
		if (!info.GetAttacker())
			return;
		
		self.SetAttr("lastattacker_id", info.GetAttacker().GetEntIndex());
		*/
	}
	
	void OnTakeDamage_Alive(CTakeDamageInfo@ info)
	{
		OnTakeDamage(info);
		//Printf("OnTakeDamage_Alive()\n");
	}
	
	void OnTakeDamage_Dying(CTakeDamageInfo@ info)
	{
		OnTakeDamage(info);
		//Printf("OnTakeDamage_Dying()\n");
	}
	
	void Event_Unconscious(CTakeDamageInfo@ info)
	{
		
	}
	
	// I'm leaving this here as an example, you're welcome! - Kizoky
	/*
	void HandleInfighting()
	{
		CP3SObj@ attacker = self.GetAttacker();
		if (@attacker == null)
			return;
		
		bool bCop = (self.IsHuman() && self.GetAttr("cr_imacop") == 1);
		bool bAttackerCop = (attacker.IsHuman() && attacker.GetAttr("cr_imacop") == 1);
		bool bAttackerPlayer = attacker.IsPlayer();
		bool bAttackerNPC = attacker.IsNPC();
		
		if (bAttackerPlayer)
			bAttackerCop = (attacker.GetAttr("cr_copoutfit") == 1);
			
		// Attacker was a player
		if (bAttackerPlayer)
		{
			// I'm a cop
			if (bCop)
			{
				// Player is not a cop
				if (!bAttackerCop)
				{
					// Alert cops to attack the Player
					AlertCops(self, attacker);
					
					if (attacker.GetWanted() <= 0)
						attacker.AddWanted(1);
					else
						attacker.AddWanted(0);
				}
				
				self.SetEnemy(attacker);
				self.SetTarget(attacker);
				self.State("st_judgementfailSRC");
			}
			// I'm NOT a cop
			else
			{
				// Player is not a cop
				if (!bAttackerCop)
				{
					// Alert cops to attack the Player
					AlertCops(self, attacker);
					
					// Join the fray too!
					if (self.HasAnyWeapon())
					{
						self.SetEnemy(attacker);
						self.FireEvent("OnHitHostile", attacker);
					}
				}
				// Police brutality ensues
				else
				{
					AlertCops(self, self);
					
					// No one gets to kill me for no reason!
					if (self.HasAnyWeapon())
					{
						self.SetEnemy(attacker);
						self.FireEvent("OnHitHostile", attacker);
					}
				}
			}
		}
		// Attacker was an NPC
		else if (bAttackerNPC)
		{
			// I'm a cop
			if (bCop)
			{
				// Attacker is NOT a cop
				if (!bAttackerCop)
				{
					AlertCops(self, attacker);
					
					self.SetEnemy(attacker);
					self.SetTarget(attacker);
					self.State("st_judgementfailSRC");
				}
				// Attacker WAS a cop
				else
				{
					// TODO: I'm honestly not sure if this is ok
					self.SetEnemy(attacker);
					self.SetTarget(attacker);
					self.State("st_judgementfailSRC");
				}
			}
			// I'm NOT a cop
			else
			{
				if (!bAttackerCop)
					AlertCops(self, attacker);
				else
					AlertCops(self, self);
				
				self.SetEnemy(attacker);
				self.FireEvent("OnHitHostile", attacker);
			}
		}
	}
	*/
}