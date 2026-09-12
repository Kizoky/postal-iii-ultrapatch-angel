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
		
	}
}