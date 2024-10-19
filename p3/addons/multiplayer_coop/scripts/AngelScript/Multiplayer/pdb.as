class PDB : MissionBase
{
	PDB(CP3SObj@ obj) { super(obj); }

	// PDB removes all the weapons from the player despite being the very first map to load
	// wtf?
	void OnSpawn(CP3SObj@ player)
	{
		RemoveAllWeapons(player);
		
		OnStart(player);
		
		// Don't forget to call into MissionBase::OnSpawn lastly
		MissionBase::OnSpawn(player);
	}
	
	// Get players, set jesus flag, switch to empty hands
	// from st_start
	void OnStart(CP3SObj@ player)
	{
		player.SetAttr("flag_Jesus", 1);
		
		// One way of getting a weapon and using them...
		CP3Player@ plr = cast<CP3Player@>(player.GetBaseEntity());
		
		CP3Weapon@ emptyhands = player.GetPlayerPtr().Weapon_OwnsThisType("p3_weapon_emptyhands");
		player.GetPlayerPtr().Weapon_Switch(emptyhands);
		
		// Probably a bad idea?
		server.ClientCommand("p3_player_skin coat", plr);
	}
	
	// From 01, 02, 03, 05, 06
	void ShowBrief(int num)
	{
		string s;
		s.format("gameui_show_p3_briefdlg #P3_PDB_T0%d_ONSCREEN", num);
		
		server.ClientCommand(s);
	}
	
	// xpt_CheckLean
	void xpt_CheckLean()
	{
		bool bResult = false;
		
		// Surely one player is already covering...
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (arr[i].GetAttr("ea_lean") == 1)
			{
				bResult = true;
				break;
			}
		}
		
		if (bResult)
			self.Pattern("pt_end");
	}
	
	// Removes grenade and match from the Players when they are roasting the zombies
	// st_tutor05
	void RemoveGrenadeMatch()
	{
		UseWeapon("p3_weapon_emptyhands");
		RemoveWeapon("p3_weapon_grenade");
		RemoveWeapon("p3_weapon_match");
	}
	
	// Removes gasoline, adds spray
	// st_tutor06
	void RemoveGasoline()
	{
		UseWeapon("p3_weapon_emptyhands");
		RemoveWeapon("p3_weapon_gasoline");
		GiveWeapon("p3_weapon_spray");
	}
	
	// st_button
	void RemoveSpray()
	{
		UseWeapon("p3_weapon_emptyhands");
		RemoveWeapon("p3_weapon_spray");
	}
	
	void xpt_CheckHealth()
	{
		bool bResult = false;
		
		// Surely one player is already covering...
		array<CP3SObj@> arr = server.GetArrayOfPlayers();
		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == null)
				continue;
				
			if (arr[i].GetAttr("ea_health") >= 100)
			{
				bResult = true;
				break;
			}
		}
		
		if (bResult)
			self.ExecutePattern("st_util.xpt_asCheckHealth");
	}
	
	void Teleport(string ent)
	{
		CBaseEntity@ tele = FindEntByName(ent);
		if (@tele == null)
			return;
		
		// without ! prefix, it teleports all the players
		tele.FireInput("Teleport", "player");
	}
	
	// 01 to 06
	void tutor_teleport(int num)
	{
		string s;
		s.format("tutor0%d_teleport", num);
		
		Teleport(s);
	}
	
	void button_teleport()
	{
		Teleport("button_teleport");
	}
}