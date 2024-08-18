// Player
class Player : IPostal3Script
{
	CP3SObj@ self;
	Player(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	// Just spawned in (new game)
	void Spawn()
	{
		
	}
	
	// Went through transition, or loaded a save game
	void OnRestore()
	{

	}
	
	void OnTakeDamage(CTakeDamageInfo@ info)
	{
		float dmg = info.GetDamage();
		Printf("AS: Taken Damage: %f\n", dmg);
	}
	
	// Killed
	void Event_Killed(CTakeDamageInfo@ info)
	{
		
	}
	
	// A hostage was taken
	void OnHostageTaken()
	{

	}
	
	// Hostage's neck was broken
	void OnHostageReleased_Killed()
	{
	
	}
	
	// Hostage/NPC was arrested
	void OnNPCArrested()
	{
	
	}
	
	// Whenever ammo was successfully picked up
	void OnAmmoPickup()
	{
	
	}
}