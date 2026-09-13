// All NPCs
[HIDDEN]
class NPC : IPostal3Script
{
	CP3SObj@ self;
	NPC(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	[HOOK NPC Event_Killed]
	void Event_Killed(const CTakeDamageInfo&in info)
	{
		// For Stats clipboard
		CP3SObj@ attacker = self.GetAttacker();
		if (@attacker != @null)
		{
			CP3Player@ player = attacker.GetPlayerPtr();
			if (@player != @null)
			{
				IncrementStat("kills", player);
				
				bool bCheckHeadshot = false;
				
				if (self.IsAnimal())
				{
					IncrementStat("animal_kills", player);
					bCheckHeadshot = true;
				}
				else if (self.IsHuman())
				{
					IncrementStat("human_kills", player);
					bCheckHeadshot = true;
				}
				
				if (bCheckHeadshot)
				{
					CP3SObj@ attacker_wpn = self.GetAttackerWeapon();
					if (@attacker_wpn != @null)
					{
						// Firearms only, headshots don't count towards melee weapons
						if (attacker_wpn.GetAttr("ea_WeaponRanged") == 0)
							return;
						
						CBaseCombatCharacter@ pBCC = cast<CBaseCombatCharacter@>(self.GetBaseEntity());
						if (@pBCC != @null)
						{
							if (pBCC.LastHitGroup() == HITGROUP_HEAD)
							{
								IncrementStat("headshots", player);
							}
						}
					}
				}
			}
		}
	}
	
	[HOOK NPC OnTakeDamage]
	void OnTakeDamage(const CTakeDamageInfo&in info)
	{
		//CTakeDamageInfo newInfo(info);
		
		//Printf("'%f'\n", info.GetDamage());
		
		//newInfo.SetDamage(0);
		
		//return newInfo;
	}
	
	[HOOK NPC OnTakeDamage_Alive]
	void OnTakeDamage_Alive(const CTakeDamageInfo&in info)
	{
		//OnTakeDamage(info);
		//Printf("OnTakeDamage_Alive()\n");
	}
	
	[HOOK NPC OnTakeDamage_Dying]
	void OnTakeDamage_Dying(const CTakeDamageInfo&in info)
	{
		//OnTakeDamage(info);
		//Printf("OnTakeDamage_Dying()\n");
	}
	
	[HOOK NPC Event_Unconscious]
	void Event_Unconscious(const CTakeDamageInfo&in info)
	{
		// For Stats clipboard
		CP3SObj@ attacker = self.GetAttacker();
		if (@attacker != @null)
		{
			CP3Player@ player = attacker.GetPlayerPtr();
			if (@player != @null)
			{
				IncrementStat("knockouts", player);
				
				if (self.IsAnimal())
				{
					IncrementStat("animal_knockouts", player);
				}
				else if (self.IsHuman())
				{
					IncrementStat("human_knockouts", player);
				}
			}
		}
	}
	
	// Called when AI has been ran for over 3 seconds
	// perfect place to check for attributes or to set other states as P3S has been initialized completely
	[HOOK NPC OnFSMStart]
	void OnFSMStart()
	{
	
	}
	
	// Called when NPCs get dismembered (Humans only!) and die pathetically in the process
	// This calls before Event_Killed is called, you can check for the last hit group here to see what animation is being played
	[HOOK NPC OnButchered]
	void OnButchered(const CTakeDamageInfo&in info)
	{
		// For Stats clipboard
		CP3SObj@ attacker = self.GetAttacker();
		if (@attacker != @null)
		{
			CP3Player@ player = attacker.GetPlayerPtr();
			if (@player != @null)
			{
				IncrementStat("humans_butchered", player);
			}
		}
	}
}