// Note: Incomplete NPC class, add these functions into your own "npc.as"!

#include "../Utils.as"
#include "../CopStuff.as"

// All NPCs
class NPC : IPostal3Script
{
	void OnTakeDamage(CTakeDamageInfo@ info)
	{
		// This causes cats and Helicopters to actually retaliate properly
		// Angel: ImAHelicopter is a valid p3s attribute for helis
		if ( self.IsCat() || self.HasAttr("ImAHelicopter"))
		{
			if ( @self.GetAttacker() != null )
			{
				if ( @self.GetAttacker() != @self )
					self.SetTarget( self.GetAttacker() );
			}
			
			return;
		}
		
		// Don't create Ghosts accidentally
		if (self.IsKnockedOut())
			return;
		
		// Fix for fire bug
		if ( self.IsHuman() )
		{
			if ( Bitwise_AND(info.GetDamageType(), DMG_BURN) )
			{
				if (self.IsOnFire())
				{
					// Postal 3 moment
					if (self.GetCurState() != "st_OnIgnite")
						self.State("st_OnIgnite");
				}
				
				return;
			}
		}
		
		// Avoid when on fire, causes funny stuff to happen
		if ( !Bitwise_AND(info.GetDamageType(), DMG_BURN) )
		{
			HandleInfighting();
		}
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
	
	// Note: This was taken out from Catharsis Reborn, it will not work as is
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
					
					/*
					if (attacker.GetWanted() <= 0)
						attacker.AddWanted(1);
					else
						attacker.AddWanted(0);
					*/
				}
				
				self.SetEnemy(attacker);
				self.SetTarget(attacker);
				//self.State("st_judgementfailSRC");
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
					//self.State("st_judgementfailSRC");
				}
				// Attacker WAS a cop
				else
				{
					// TODO: I'm honestly not sure if this is ok
					self.SetEnemy(attacker);
					self.SetTarget(attacker);
					//self.State("st_judgementfailSRC");
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
}