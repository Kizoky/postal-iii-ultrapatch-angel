// Player
class Player : IPostal3Script
{
	CP3SObj@ self;
	Player(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	// Just spawned in (new game)
	[HOOK Player Spawn]
	void Spawn()
	{
		
	}
	
	// Went through transition, or loaded a save game
	[HOOK Player OnRestore]
	void OnRestore()
	{

	}
	
	[HOOK Player OnTakeDamage]
	void OnTakeDamage(CTakeDamageInfo@ info)
	{
		//float dmg = info.GetDamage();
		//Printf("AS: Taken Damage: %f\n", dmg);
	}
	
	// Killed
	[HOOK Player Event_Killed]
	void Event_Killed(CTakeDamageInfo@ info)
	{
		
	}
	
	// A hostage was taken
	[HOOK Player OnHostageTaken]
	void OnHostageTaken()
	{

	}
	
	// Hostage's neck was broken
	[HOOK Player OnHostageReleased_Killed]
	void OnHostageReleased_Killed()
	{
	
	}
	
	// Hostage/NPC was arrested
	[HOOK Player OnNPCArrested]
	void OnNPCArrested()
	{
	
	}
	
	// Whenever ammo was successfully picked up
	[HOOK Player OnAmmoPickup]
	void OnAmmoPickup()
	{
	
	}
	
	// Called in Multiplayer only
	[HOOK Player Respawn]
	void Respawn()
	{
	
	}
}