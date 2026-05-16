// Cool class which adds cameras on existing maps - Kizoky
class CBackgroundMap : IPostal3Script
{
	// Just spawned in (new game)
	[HOOK Player Spawn]
	void Spawn()
	{
		if (gpGlobals.eLoadType == MapLoad_Background)
		{
			string map = gpGlobals.mapname;
			map.toLower();
		
			string funcName;
			funcName.format("background_%s", map);
			
			//server.DelayedExecution(0.0f, "CBackgroundMap", funcName, null);
			CallContext("CBackgroundMap", funcName);
		}
	}
	
	CBaseEntity@ cam;
	
	void PrintCameraPos()
	{
		CP3SObj@ player = GetPlayer();
		
		CP3Player@ p3player = player.GetPlayerPtr();
		
		Vector pos = p3player.GetP3CameraOrigin();
		QAngle ang = p3player.GetP3CameraAngles();
		
		// NOTE: Recommended to do this while in FPS mode
		Warning("CreateCamera( Vector(%f,%f,%f), QAngle(%f,%f,%f) );\n", pos.x, pos.y, pos.z, ang.x, ang.y, ang.z);
	}
	
	[HIDDEN]
	void CreateCamera(Vector camPos, QAngle camAng, string target = "")
	{
		@cam = CreateEnt("point_viewcontrol");
		
		Vector pos = camPos;
		QAngle ang = camAng;
		
		cam.SetAbsOrigin(pos);
		cam.SetAbsAngles(ang);
		
		cam.KeyValue("target", target);
		
		//cam.SetTarget(target);
		
		::Spawn(cam);
		 
		CCutsceneCamera@ ccam = cast<CCutsceneCamera@>(cam);
		if (@ccam == null)
		{
			Printf("this didn't work.\n");
			return;
		}
		
		CP3SObj@ pplayer = GetPlayer();
		
		//ccam.SetTarget(pplayer.GetBaseEntity());
		
		cam.FireInput("Enable");
	}
	
	[HIDDEN]
	void HidePlayer(Vector pos)
	{
		// Shove the player somewhere else where NPCs can't target them
		CP3SObj@ pplayer = GetPlayer();
		CBaseEntity@ plr = pplayer.GetBaseEntity();
		
		plr.SetAbsOrigin(pos);
		
		// Stop yapping
		pplayer.GetP3SObj().SetAttr("ea_gagged", 1);
	}
	
	[HIDDEN]
	void background_pdb()
	{
		CreateCamera( Vector(433.644165,8868.108398,266.419037), QAngle(3.959999,-120.342339,0.000000) );
	}
	
	[HIDDEN]
	void background_pw()
	{
		CreateCamera( Vector(81.770874,-315.712860,-28.170418), QAngle(6.204351,37.602959,0.000000) );
	}
	
	[HIDDEN]
	void background_dcr()
	{
		CreateCamera( Vector(3361.242432,-2854.453125,186.216003), QAngle(8.118097,136.747269,0.000000) );
	}
	
	[HIDDEN]
	void background_jwb()
	{
		CBaseEntity@ jen = gEntList.FindEntByName(null, "npc_jen");
		
		CP3SObj@ p3s_jen = jen.GetP3SObj();
		// Make jen immortal
		p3s_jen.SetAttr("ea_health", 999999);
		p3s_jen.SetAttr("ea_invulnerable", 1);
		
		// Shove the player somewhere else where NPCs can't target them
		HidePlayer( Vector(716.626465,4766.279297,40.263702) );
		
		CreateCamera( Vector(779.977234,2864.037842,153.699463), QAngle(7.722001,-130.245087,0.000000) );
		//CBaseEntity@ mission_logic = FindEntByName("mission_logic");
		////// Rest in piss
		//Remove(mission_logic);
		//
		//CCutsceneCamera@ ccam = cast<CCutsceneCamera@>(cam);
		//if (@ccam == null)
		//{
		//	//Printf("this didn't work.\n");
		//	return;
		//}
		
		//ccam.SetTarget(jen);
		
		//cam.FireInput("Enable");

		//
		//
		//
		//// How much the camera will distance from the NPC from the back
		//float BACK_DIST = 105.0f;
		//
		//// How much the camera will move up or down
		//float UP_DIST = 75.0f;
		//
		//int eyesAtt = jen.LookupAttachment("eyes");
		//Vector eyepos;
		//QAngle eyeang;
		//
		//jen.GetAttachment(eyesAtt, eyepos, eyeang);
		//Vector pos = jen.GetAbsOrigin();
		//
		//Vector newwpos = pos + Vector(0,0,UP_DIST);
		//
		//cam.SetAbsAngles(jen.GetAbsAngles());
		//
		//Vector forward = Vector(0,0,0);
		//Vector right = Vector(0,0,0);
		//Vector up = Vector(0,0,0);
		//
		//// Use rotated angle so we will know the "back"
		//AngleVectors(jen.GetAbsAngles() + QAngle(0,180,0), forward, right, up);
		//
		//Vector nuVec = newwpos + (forward * BACK_DIST);
		//
		//cam.SetAbsOrigin(nuVec);
		//cam.SetParent(jen);
		
	}
	
	[HIDDEN]
	void background_cm()
	{
		// Shove the player somewhere else where NPCs can't target them
		HidePlayer( Vector(-1633.515137,578.767090,130.992676) );
		
		CreateCamera( Vector(-690.979553,-498.276154,258.133240), QAngle(20.821608,39.178844,0.000000) );
	}
	
	[HIDDEN]
	void background_mtz()
	{
		// Shove the player somewhere else where NPCs can't target them
		HidePlayer( Vector(7141.667969,-3075.356445,251.269333) );
			
		CreateCamera( Vector(3047.059570,-2921.015137,585.160156), QAngle(18.347971,130.054367,0.000000) );
	}
}