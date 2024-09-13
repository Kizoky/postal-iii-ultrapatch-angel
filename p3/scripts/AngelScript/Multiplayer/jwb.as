class JWB : MissionBase
{
	JWB(CP3SObj@ obj) { super(obj); }

	// Gives the Player shopvac
	void OnSpawn(CP3SObj@ player)
	{
		CP3Player@ plr = cast<CP3Player@>(player.GetBaseEntity());
		
		// Give shopvac
		plr.GiveNamedItem("p3_weapon_shopvac");
		
		// Give the gamamet
		plr.GiveNamedItem("p3_weapon_gamamet");
		
		// Give catnip
		plr.GiveNamedItem("p3_weapon_catnip");
		
		// Give JWB-related weapons
		plr.GiveNamedItem("p3_weapon_cat");
		plr.GiveNamedItem("p3_weapon_gasoline");
		plr.GiveNamedItem("p3_weapon_deserteagle");
		plr.GiveAmmo(28, GetAmmoIndex("DesertEagle"));
		plr.GiveNamedItem("p3_weapon_machete");
		plr.GiveNamedItem("p3_weapon_nailbat");
		plr.GiveNamedItem("p3_weapon_spray");
		
		CBaseEntity@ wep = plr.GiveNamedItem("p3_weapon_taser");
		plr.Weapon_Switch(cast<CP3Weapon@>(wep));
		
		// Don't forget to call into MissionBase::OnSpawn lastly
		MissionBase::OnSpawn(player);
	}
}