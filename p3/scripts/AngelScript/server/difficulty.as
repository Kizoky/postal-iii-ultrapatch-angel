// Difficulty system

[HIDDEN]
class CDifficulty : IPostal3Script
{
	CP3SObj@ self;
	CDifficulty(CP3SObj@ obj)
	{
		@self = @obj;
	}

	[HOOK Player OnTakeDamage]
	CTakeDamageInfo OnPlayerTakeDamage(const CTakeDamageInfo&in info)
	{	
		CTakeDamageInfo newInfo(info);
		
		if ((newInfo.GetDamageType() & (DMG_DROWN | DMG_CRUSH | DMG_FALL | DMG_POISON | DMG_SNIPER)) != 0)
		{
			// Skill level doesn't affect these types of damage.
			return newInfo;
		}
		
		int diff = GetDifficulty();
		switch (diff)
		{
			// Player takes less damage with these puny difficulties
			case DIFF_JOURNALIST: newInfo.ScaleDamage(0.50f); break;
			case DIFF_EASY: newInfo.ScaleDamage(0.75f); break;
			
			default: break;
		}
		
		return newInfo;
	}
	
	[HOOK NPC OnTakeDamage]
	CTakeDamageInfo OnNPCTakeDamage(const CTakeDamageInfo&in info)
	{
		CTakeDamageInfo newInfo(info);
		
		if ((newInfo.GetDamageType() & (DMG_DROWN | DMG_CRUSH | DMG_FALL | DMG_POISON | DMG_SNIPER)) != 0)
		{
			// Skill level doesn't affect these types of damage.
			return newInfo;
		}
		
		bool hatesPlayer = false;
		
		//CP3SObj@ self = GetContextOwner();
		if (self != null)
		{
			// TODO: Check for all players
			CP3SObj@ player = GetPlayer();
		
			// Hostile towards player
			if (self.IsHate(player))
			{
				hatesPlayer = true;
			}
		}
		
		if (hatesPlayer)
		{
			int diff = GetDifficulty();
			switch (diff)
			{
				// NPCs take more damage the lowest the difficulty is
				case DIFF_JOURNALIST: newInfo.ScaleDamage(1.50f); break;
				case DIFF_EASY: newInfo.ScaleDamage(1.25f); break;
				
				default: break;
			}
		}
		
		return newInfo;
	}
	
	[HOOK SEngine OnEntitySpawned]
	void OnEntitySpawned(CBaseEntity@ pEntity)
	{
		// NPCs only
		if (FClassNameIs(pEntity, "p3_npc_*") == false)
			return;
			
		
	}

}