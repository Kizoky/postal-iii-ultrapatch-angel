class PW : MissionBase
{
	PW(CP3SObj@ obj) { super(obj); }

	// Give the player shopvac and automatically switch to it
	void OnSpawn(CP3SObj@ player)
	{
		CP3Player@ plr = cast<CP3Player@>(player.GetBaseEntity());
		
		// Give shopvac
		CBaseEntity@ wep = plr.GiveNamedItem("p3_weapon_shopvac");
		
		// Switch to shopvac
		plr.Weapon_Switch(cast<CP3Weapon@>(wep));
		
		
		// Don't forget to call into MissionBase::OnSpawn lastly
		MissionBase::OnSpawn(player);
	}
}