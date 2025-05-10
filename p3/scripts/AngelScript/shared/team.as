void CreateAndAddTeam(int teamId, string teamName, string teamSkin, string teamSpot, Color teamColor, Color teamColorHP, Color teamColorHPBack, Color teamColorAmmo)
{
	ASTeamData_t data;
	data.teamId = teamId;
	data.teamName = teamName;
	data.teamSkin = teamSkin;
	data.teamSpot = teamSpot;
	data.teamColor = teamColor;
	data.teamColorHP = teamColorHP;
	data.teamColorHPBack = teamColorHPBack;
	data.teamColorAmmo = teamColorAmmo;
	
	AddGlobalTeam(data);
}

shared enum ASTeam_t
{
	TEAM_DUDE = TEAM_SPECTATOR+1,
	TEAM_AGENT,
	TEAM_POLICE,
	TEAM_SECURITY,
	TEAM_PRISONER,
	TEAM_SWAT,
	TEAM_KROTCHY,
	TEAM_JANITOR,
	TEAM_PATROL
};


void AddTeams()
{
																				// Team Color	// Team Color HP	// Team Color HP back	// Team Color Ammo
																				
	CreateAndAddTeam(TEAM_UNASSIGNED, "Unassigned", "coat", "info_player_start", Color(0,0,0,255), Color(45,136,67,255), Color(0,0,0,218), Color(255,255,255,255));
	CreateAndAddTeam(TEAM_SPECTATOR, "Spectator", "coat", "info_player_start", Color(0,0,0,255), Color(45,136,67,255), Color(0,0,0,218), Color(255,255,255,255));
	if (!IsTeamplay())
	{
		return;
	}
	
	CreateAndAddTeam(TEAM_DUDE, "Dude", "dude", "info_player_mp_dude", Color(132,0,0,255), Color(132,0,0,200), Color(132,0,0,120), Color(216,15,15,240));
	CreateAndAddTeam(TEAM_AGENT, "Agent", "agent", "info_player_mp_agent", Color(0,0,0,255), Color(0,0,0,200), Color(0,0,0,120), Color(0,15,15,240));
}

[HIDDEN]
class CTeamHandler
{
	[HOOK SEngine GameRulesInit]
	void GameRulesInit()
	{
		AddTeams();
	}
}