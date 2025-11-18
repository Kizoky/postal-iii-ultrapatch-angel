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