class DCR : MissionBase
{
	DCR(CP3SObj@ obj) { super(obj); }

	// Gives the Player shopvac
	void OnSpawn(CP3SObj@ player)
	{
		CP3Player@ plr = cast<CP3Player@>(player.GetBaseEntity());
		
		// Give shopvac
		plr.GiveNamedItem("p3_weapon_shopvac");
		
		// Give the gamamet
		plr.GiveNamedItem("p3_weapon_gamamet");
		
		// Give catnip
		CBaseEntity@ wep = plr.GiveNamedItem("p3_weapon_catnip");
		// Switch to catnip
		plr.Weapon_Switch(cast<CP3Weapon@>(wep));
		
		// Don't forget to call into MissionBase::OnSpawn lastly
		MissionBase::OnSpawn(player);
	}
}