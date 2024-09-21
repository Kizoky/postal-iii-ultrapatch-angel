class CM : MissionBase
{
	CM(CP3SObj@ obj) { super(obj); }

	// Gives the Player shopvac
	// TODO: Maybe it would have been better if we had "OnSpawn_JWB", "OnSpawn_PDB", etc... for weapons mainly
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
		
		plr.GiveNamedItem("p3_weapon_taser");
		
		// Give CM-related weapons
		plr.GiveNamedItem("p3_weapon_m16");
		plr.GiveAmmo(60, GetAmmoIndex("M16"));
		plr.GiveNamedItem("p3_weapon_shotgun");
		plr.GiveAmmo(8, GetAmmoIndex("Buckshot"));
		plr.GiveNamedItem("p3_weapon_grenade");
		plr.GiveAmmo(4, GetAmmoIndex("Grenade"));
		
		plr.GiveNamedItem("p3_weapon_shovel");
		
		//plr.Weapon_Switch(cast<CP3Weapon@>(wep));
		
		// Don't forget to call into MissionBase::OnSpawn lastly
		MissionBase::OnSpawn(player);
	}
}