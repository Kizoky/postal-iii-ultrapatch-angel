// Collection of utils made for Catharsis Reborn originally - Kizoky
#include "Utils_enums.as"

CBaseEntity@ SpawnAmbient(string name, string sound)
{
	CBaseEntity@ ambient = FindEntByName(name);
	if (@ambient == null)
	{
		@ambient = CreateEnt("ambient_generic");
		if ( @ambient != null )
		{
			ambient.KeyValue( "targetname", name );
			ambient.KeyValue( "message", sound );
			ambient.KeyValue( "radius", "1250" );
			
			ambient.KeyValue( "cspinup", "0" );
			ambient.KeyValue( "fadeinsecs", "0" );
			ambient.KeyValue( "fadeoutsecs", "0" );
			ambient.KeyValue( "health", "10" );
			ambient.KeyValue( "lfomodpitch", "0" );
			ambient.KeyValue( "lfomodvol", "0" );
			ambient.KeyValue( "lforate", "0" );
			ambient.KeyValue( "lfotype", "0" );
			ambient.KeyValue( "pitch", "100" );
			ambient.KeyValue( "pitchstart", "100" );
			ambient.KeyValue( "preset", "0" );
			ambient.KeyValue( "spawnflags", "17" );
			ambient.KeyValue( "spindown", "0" );
			ambient.KeyValue( "spinup", "0" );
			ambient.KeyValue( "volstart", "10" );
			
			Spawn(ambient);
			ambient.Activate();
		}
	}
	
	return @ambient;
}

CBaseEntity@ SpawnAmbientEx(string name, string sound)
{
	CBaseEntity@ ambient = FindEntByName(name);
	if (@ambient == null)
	{
		@ambient = CreateEnt("ambient_generic");
		if ( @ambient != null )
		{
			ambient.KeyValue( "targetname", name );
			ambient.KeyValue( "message", sound );
			ambient.KeyValue( "radius", "0" );
			
			ambient.KeyValue( "cspinup", "0" );
			ambient.KeyValue( "fadeinsecs", "0" );
			ambient.KeyValue( "fadeoutsecs", "0" );
			ambient.KeyValue( "health", "10" );
			ambient.KeyValue( "lfomodpitch", "0" );
			ambient.KeyValue( "lfomodvol", "0" );
			ambient.KeyValue( "lforate", "0" );
			ambient.KeyValue( "lfotype", "0" );
			ambient.KeyValue( "pitch", "100" );
			ambient.KeyValue( "pitchstart", "100" );
			ambient.KeyValue( "preset", "0" );
			ambient.KeyValue( "spawnflags", "16" );
			ambient.KeyValue( "spindown", "0" );
			ambient.KeyValue( "spinup", "0" );
			ambient.KeyValue( "volstart", "10" );
			
			//Spawn(ambient);
			//ambient.Activate();
		}
	}
	
	return @ambient;
}

CP3SObj@ SpawnLogicEnt(string name, string behavior, bool bTransit = false)
{
	CBaseEntity@ logic = FindEntByName(name);
	if ( @logic == null )
	{
		@logic = CreateEnt("p3_fsm_logic_entity");
		if ( @logic != null )
		{
			logic.KeyValue( "targetname", name );
			//logic.KeyValue( "globalname", name );

			logic.KeyValue( "Faction", "Logic" );
			logic.KeyValue( "FSMBehavior", behavior );
			logic.KeyValue( "InitState", "st_init" );
			logic.KeyValue( "Manner", "Logic" );
			logic.KeyValue( "StartDisabled", "0" );
			logic.KeyValue( "StartState", "st_start" );
			logic.KeyValue( "UpdateTime", "0.5" );
			
			Spawn(logic);
			logic.Activate();
			
			if (bTransit)
			{
				logic.GetP3SObj().SetAttr("ea_transition", 1);
				CP3SObj@ player = GetPlayer();
				if (player != null)
				{
					logic.SetOwnerEntity(player.GetBaseEntity());
					logic.GetP3SObj().SetTarget(player);
				}
			}
			
			return @logic.GetP3SObj();
		}
	}
	
	return @logic.GetP3SObj();
}

CBaseEntity@ SpawnSmoke(string name, Vector pos)
{
	CBaseEntity@ smoke = FindEntByName(name);
	if (@smoke == null)
	{
		CBaseEntity@ ent = CreateEnt("env_smokestack");
		if ( @ent != null )
		{
			ent.KeyValue( "angles", "0" );
			ent.KeyValue( "BaseSpread", "60" );
			ent.KeyValue( "EndSize", "115" );
			ent.KeyValue( "InitialState", "1" );
			ent.KeyValue( "JetLength", "150" );
			ent.KeyValue( "Rate", "20" );
			ent.KeyValue( "renderamt", "255" );
			ent.KeyValue( "rendercolor", "45 45 45" );
			ent.KeyValue( "roll", "15" );
			ent.KeyValue( "SmokeMaterial", "particle/SmokeStack.vmt" );
			ent.KeyValue( "Speed", "50" );
			ent.KeyValue( "SpreadSpeed", "60" );
			ent.KeyValue( "StartSize", "100" );
			ent.KeyValue( "targetname", name );
			ent.KeyValue( "twist", "7" );
			ent.KeyValue( "WindAngle", "0" );
			ent.KeyValue( "WindSpeed", "0" );
			
			Spawn(ent);
			ent.Activate();
			
			ent.SetAbsOrigin( pos );
		}
	}
	
	return @smoke;
}

// Don't forget to activate all the pathnodes
CBaseEntity@ SpawnPathnode(string name, Vector pos, string dest)
{
	CBaseEntity@ node = CreateEnt("path_track");
	if ( @node != null )
	{
		node.KeyValue( "targetname", name );
		
		node.SetAbsOrigin( pos );
		
		node.KeyValue( "target", dest );
		
		node.KeyValue( "orientationtype", "1" );
		node.KeyValue( "radius", "0" );
		node.KeyValue( "speed", "0" );
		node.KeyValue( "spawnflags", "0" );
		node.KeyValue( "angles", "0 0 0" );
		Spawn(node);
		//node.Activate();
	}
	
	return @node;
}

CBaseEntity@ SpawnDummy(string name, Vector pos)
{
	CBaseEntity@ dummy = FindEntByName(name);
	if (@dummy == null)
	{
		@dummy = CreateEnt("p3_fsm_dummy");
		if ( @dummy != null )
		{
			dummy.KeyValue( "targetname", name );
			dummy.SetAbsOrigin( pos );
			Spawn(dummy);
			dummy.Activate();
		}
	}

	return @dummy;
}

CBaseEntity@ SpawnDynamicProp(string model, int health = 0, string parent = "null")
{
	CBaseEntity@ prop = CreateEnt("prop_dynamic_override");
	if (@prop != null)
	{
		string sHealth; sHealth.format("%d", health);
		prop.KeyValue( "health", sHealth );
		prop.KeyValue( "model", model );
		
		//if (parent != "null")
			//SetKeyValue( prop, "parentname", parent);
		
		prop.KeyValue( "angles", "0 0 0" );
		prop.KeyValue( "DisableBoneFollowers", "0" );
		prop.KeyValue( "disablereceiveshadows", "0" );
		prop.KeyValue( "disableshadows", "1" );
		prop.KeyValue( "ExplodeDamage", "0" );
		prop.KeyValue( "ExplodeRadius", "0" );
		prop.KeyValue( "fademaxdist", "1800" );
		prop.KeyValue( "fademindist", "1500" );
		prop.KeyValue( "fadescale", "1" );
		prop.KeyValue( "MaxAnimTime", "10" );
		prop.KeyValue( "MinAnimTime", "5" );
		prop.KeyValue( "modelscale", "1.0" );
		prop.KeyValue( "PerformanceMode", "0" );
		prop.KeyValue( "pressuredelay", "0" );
		prop.KeyValue( "RandomAnimation", "0" );
		prop.KeyValue( "renderamt", "255" );
		prop.KeyValue( "rendercolor", "255 255 255" );
		prop.KeyValue( "renderfx", "0" );
		prop.KeyValue( "rendermode", "0" );
		prop.KeyValue( "SetBodyGroup", "0" );
		prop.KeyValue( "skin", "0" );
		prop.KeyValue( "solid", "6" );
		prop.KeyValue( "spawnflags", "0" );
		prop.KeyValue( "maxdxlevel", "0" );
		prop.KeyValue( "mindxlevel", "0" );
	}
	
	return prop;
}

CBaseEntity@ SpawnProp(string model)
{
	PrecacheModel(model);
	
	CBaseEntity@ prop = CreateEnt("prop_physics");
	if (@prop != null)
	{
		prop.KeyValue( "model", model );
		
		prop.KeyValue( "angles", "0 0 0" );
		prop.KeyValue( "DisableBoneFollowers", "0" );
		prop.KeyValue( "disablereceiveshadows", "0" );
		prop.KeyValue( "disableshadows", "1" );
		prop.KeyValue( "ExplodeDamage", "0" );
		prop.KeyValue( "ExplodeRadius", "0" );
		prop.KeyValue( "fademaxdist", "1800" );
		prop.KeyValue( "fademindist", "1500" );
		prop.KeyValue( "fadescale", "1" );
		prop.KeyValue( "MaxAnimTime", "10" );
		prop.KeyValue( "MinAnimTime", "5" );
		prop.KeyValue( "modelscale", "1.0" );
		prop.KeyValue( "PerformanceMode", "0" );
		prop.KeyValue( "pressuredelay", "0" );
		prop.KeyValue( "RandomAnimation", "0" );
		prop.KeyValue( "renderamt", "255" );
		prop.KeyValue( "rendercolor", "255 255 255" );
		prop.KeyValue( "renderfx", "0" );
		prop.KeyValue( "rendermode", "0" );
		prop.KeyValue( "SetBodyGroup", "0" );
		prop.KeyValue( "skin", "0" );
		prop.KeyValue( "solid", "6" );
		prop.KeyValue( "spawnflags", "1546" );
		prop.KeyValue( "maxdxlevel", "0" );
		prop.KeyValue( "mindxlevel", "0" );
		prop.KeyValue( "inertiaScale", "1.0" );
	}
	
	return prop;
}

CBaseEntity@ SpawnSprite(string name)
{
	PrecacheModel("sprites/glow06.spr");
	
	CBaseEntity@ sprite = FindEntByName(name);
	if (@sprite == null)
	{
		@sprite = CreateEnt("env_sprite");
		if ( @sprite != null )
		{
			sprite.KeyValue( "targetname", name );
			
			sprite.KeyValue( "disablereceiveshadows", "0" );
			sprite.KeyValue( "framerate", "60.0" );
			sprite.KeyValue( "GlowProxySize", "10.5" );
			sprite.KeyValue( "HDRColorScale", "10.5" );
			sprite.KeyValue( "maxdxlevel", "0" );
			sprite.KeyValue( "mindxlevel", "0" );
			sprite.KeyValue( "model", "sprites/glow06.spr" );
			sprite.KeyValue( "renderamt", "255" );
			sprite.KeyValue( "rendercolor", "225 0 0" );
			sprite.KeyValue( "renderfx", "9" );
			sprite.KeyValue( "rendermode", "3" );
			sprite.KeyValue( "scale", "1.0" );
			sprite.KeyValue( "spawnflags", "1" );
		}
	}

	return @sprite;
}

// This version always creates a new sprite
CBaseEntity@ SpawnSpriteEx(string name)
{
	PrecacheModel("sprites/glow06.spr");
	
	CBaseEntity@ sprite = CreateEnt("env_sprite");
	if ( @sprite != null )
	{
		sprite.KeyValue( "targetname", name );
		
		sprite.KeyValue( "disablereceiveshadows", "0" );
		sprite.KeyValue( "framerate", "60.0" );
		sprite.KeyValue( "GlowProxySize", "10.5" );
		sprite.KeyValue( "HDRColorScale", "10.5" );
		sprite.KeyValue( "maxdxlevel", "0" );
		sprite.KeyValue( "mindxlevel", "0" );
		sprite.KeyValue( "model", "sprites/glow06.spr" );
		sprite.KeyValue( "renderamt", "255" );
		sprite.KeyValue( "rendercolor", "225 0 0" );
		sprite.KeyValue( "renderfx", "9" );
		sprite.KeyValue( "rendermode", "3" );
		sprite.KeyValue( "scale", "1.0" );
		sprite.KeyValue( "spawnflags", "1" );
	}

	return @sprite;
}

CBaseEntity@ SpawnLogicItem(int itemType = 0)
{
	string a = formatInt(itemType);
	
	CBaseEntity@ itm = CreateEnt("prop_p3_fsmitem");
	if (@itm != null)
	{
		itm.KeyValue( "item_prefab", "0" );
		itm.KeyValue( "angles", "0" );
		itm.KeyValue( "BulkyHandledAnimationType", "0" );
		itm.KeyValue( "damagetoenablemotion", "0" );
		itm.KeyValue( "Damagetype", "0" );
		itm.KeyValue( "disableshadows", "1" );
		itm.KeyValue( "ExplodeDamage", "0" );
		itm.KeyValue( "ExplodeRadius", "0" );
		itm.KeyValue( "Faction", "Items" );
		itm.KeyValue( "fademaxdist", "1500" );
		itm.KeyValue( "fademindist", "1280" );
		itm.KeyValue( "fadescale", "1" );
		itm.KeyValue( "forcetoenablemotion", "0" );
		itm.KeyValue( "inertiaScale", "1.0" );
		itm.KeyValue( "massScale", "0" );
		itm.KeyValue( "minhealthdmg", "0" );
		itm.KeyValue( "modelscale", "1.0" );
		itm.KeyValue( "nodamageforces", "0" );
		itm.KeyValue( "OneHandledAnimationType", "0" );
		itm.KeyValue( "PerformanceMode", "0" );
		itm.KeyValue( "physdamagescale", "0.1" );
		itm.KeyValue( "pressuredelay", "0" );
		itm.KeyValue( "shadowcastdist", "0" );
		itm.KeyValue( "skin", "0" );
		itm.KeyValue( "spawnflags", "260" );
		itm.KeyValue( "TwoHandledAnimationType", "0" );
		itm.KeyValue( "maxdxlevel", "0" );
		itm.KeyValue( "mindxlevel", "0" );
		
		itm.KeyValue( "Type", a );
		
		//Spawn(itm);
		//itm.Activate();
	}
	
	return itm;
}

CBaseEntity@ SpawnWeapon(string weapon, bool bLockInPlace = false)
{
	CBaseEntity@ itm = CreateEnt(weapon);
	if (@itm != null)
	{
		itm.KeyValue( "fademaxdist", "0" );
		itm.KeyValue( "fademindist", "-1" );
		itm.KeyValue( "fadescale", "1" );
		
		itm.KeyValue( "spawnflags", "0" );
		
		if (bLockInPlace)
			itm.KeyValue( "spawnflags", "1" );
	}
	
	return itm;
}

CBaseEntity@ SpawnAmmo(int Ammo, bool bLockInPlace = false)
{
	string AmmoName;
	string AmmoAmount = SpawnAmmoNum[Ammo];
	string model;
	
	switch (Ammo)
	{
		case AMMO_ROCKET: 			AmmoName = "M136"; model = "models/weapons/box_grenade/ammo_rockets.mdl"; break;
		case AMMO_PEPPERSPRAY: 		AmmoName = "PepperSprayCan"; model = "models/weapons/box_grenade/ammo_pepperspray.mdl"; break;
		case AMMO_MOLOTOV: 			AmmoName = "Molotov"; model = "models/weapons/box_grenade/ammo_molotov.mdl"; break;
		case AMMO_GRENADE: 			AmmoName = "Grenade"; model = "models/weapons/box_grenade/ammo_grenades.mdl"; break;
		case AMMO_GASOLINE: 		AmmoName = "Gasoline"; model = "models/weapons/box_grenade/ammo_gazoline.mdl"; break;
		case AMMO_CATNIP: 			AmmoName = "CatnipCan"; model = "models/weapons/box_grenade/ammo_catnip.mdl"; break;
		case AMMO_HEAVYPISTOL: 		AmmoName = "DesertEagle"; model = "models/weapons/box_grenade/ammo_hpistol.mdl"; break;
		case AMMO_AR: 				AmmoName = "M16"; model = "models/weapons/box_grenade/ammo_ar.mdl"; break;
		case AMMO_SMG: 				AmmoName = "SMG"; model = "models/weapons/box_grenade/ammo_smg.mdl"; break;
		case AMMO_M60: 				AmmoName = "M60"; model = "models/weapons/box_grenade/ammo_m60.mdl"; break;
		case AMMO_TASER: 			AmmoName = "Taser"; model = "models/weapons/box_grenade/ammo_taser.mdl"; break;
		case AMMO_SHOTGUN: 			AmmoName = "Buckshot"; model = "models/weapons/box_grenade/ammo_shotgun.mdl"; break;
	}
	
	PrecacheModel(model);
	
	CBaseEntity@ itm = CreateEnt("prop_p3_give_ammo");
	if (@itm != null)
	{
		itm.KeyValue( "Ammo", AmmoName );
		itm.KeyValue( "AmmoAmount", AmmoAmount );
		itm.KeyValue( "model", model );
		
		itm.KeyValue( "spawnflags", "0" );
		if (bLockInPlace)
			itm.KeyValue( "spawnflags", "8" );
		
		itm.KeyValue( "angles", "0" );
		itm.KeyValue( "BulkyHandledAnimationType", "0" );
		itm.KeyValue( "damagetoenablemotion", "0" );
		itm.KeyValue( "Damagetype", "0" );
		itm.KeyValue( "disableshadows", "1" );
		itm.KeyValue( "ExplodeDamage", "0" );
		itm.KeyValue( "ExplodeRadius", "0" );
		itm.KeyValue( "Faction", "Items" );
		itm.KeyValue( "fademaxdist", "0" );
		itm.KeyValue( "fademindist", "-1" );
		itm.KeyValue( "fadescale", "1" );
		itm.KeyValue( "forcetoenablemotion", "0" );
		itm.KeyValue( "inertiaScale", "1.0" );
		itm.KeyValue( "massScale", "0" );
		itm.KeyValue( "minhealthdmg", "0" );
		itm.KeyValue( "modelscale", "1.0" );
		itm.KeyValue( "nodamageforces", "0" );
		itm.KeyValue( "OneHandledAnimationType", "0" );
		itm.KeyValue( "PerformanceMode", "0" );
		itm.KeyValue( "physdamagescale", "0.1" );
		itm.KeyValue( "pressuredelay", "0" );
		itm.KeyValue( "shadowcastdist", "0" );
		itm.KeyValue( "skin", "0" );
		itm.KeyValue( "TwoHandledAnimationType", "0" );
		itm.KeyValue( "maxdxlevel", "0" );
		itm.KeyValue( "mindxlevel", "0" );
	}
	
	return itm;
}

// P3 NPCs can't react to/interact with Valve ragdolls
CBaseEntity@ SpawnValveRagdoll(string model)
{
	CBaseEntity@ ragdoll = CreateEnt("prop_ragdoll");
	if (@ragdoll != null)
	{
		ragdoll.KeyValue( "model", model );
		
		ragdoll.KeyValue( "disableshadows", "1" );
		ragdoll.KeyValue( "fademaxdist", "0" );
		ragdoll.KeyValue( "fademindist", "-1" );
		ragdoll.KeyValue( "fadescale", "1" );
		ragdoll.KeyValue( "maxdxlevel", "0" );
		ragdoll.KeyValue( "mindxlevel", "0" );
		ragdoll.KeyValue( "skin", "0" );
		ragdoll.KeyValue( "StartDisabled", "0" );
		ragdoll.KeyValue( "spawnflags", "0" );
	}
	
	return ragdoll;
}

// todo: Add support for Human NPCs, randomized skins, possibly weapons too?
CBaseEntity@ SpawnNPC(int NPCtype)
{
	if (NPCtype > NPC_CAT)
	{
		Warning("CBaseEntity@ SpawnNPC(int NPCtype): NPC Type %d not implemented yet!!!\n", NPCtype);
	}
	
	CBaseEntity@ NPC;
	
	switch(NPCtype)
	{
		case NPC_CAT: 		@NPC = CreateEnt("p3_npc_cat"); break;
		case NPC_DOG: 		@NPC = CreateEnt("p3_npc_dog"); break;
		case NPC_MONKEY: 	@NPC = CreateEnt("p3_npc_monkey"); break;
		case NPC_MOTORHEAD: @NPC = CreateEnt("p3_npc_motorhead"); break;
	}
	
	if (@NPC != null)
	{
		NPC.KeyValue( "NeutralViewRange", "500" );
		NPC.KeyValue( "NeutralHearRange", "960" );
		NPC.KeyValue( "AlertViewRange", "960" );
		NPC.KeyValue( "AlertHearRange", "960" );
		NPC.KeyValue( "hintgroup", "wish_fun_idle" );
		
		// NPC.KeyValue( "model", model );
		switch (NPCtype)
		{
			case NPC_CAT: 		
			{
				NPC.KeyValue( "AlertViewRange", "600" );
				NPC.KeyValue( "AlertHearRange", "400" );
				NPC.KeyValue( "NeutralViewRange", "420" );
				NPC.KeyValue( "NeutralHearRange", "400" );
				
				NPC.KeyValue( "model", "models/characters/cat/cat.mdl" );
				NPC.KeyValue( "ModelTemplate", "Cat_common" );
				NPC.KeyValue( "spawnflags", "1073741824" ); // interactable with +USE flag
				NPC.KeyValue( "FSMBehavior", "bh_cat" );
				NPC.KeyValue( "InitState", "st_init" );
				NPC.KeyValue( "StartState", "st_start" );
				NPC.KeyValue( "Faction", "Animals" );
				NPC.KeyValue( "Manner", "PussyCat" );
				break;
			}
			//case NPC_DOG: 		NPC.KeyValue( "model", model ); break;
			//case NPC_MONKEY: 	NPC.KeyValue( "model", model ); break;
			//case NPC_MOTORHEAD: NPC.KeyValue( "model", model ); break;
		}
		
		NPC.KeyValue( "habitatid", "-1" );
		NPC.KeyValue( "ammoamount", "1" );
		NPC.KeyValue( "SetBodyGroup", "0" );
		NPC.KeyValue( "DontPickupWeapons", "0" );
		NPC.KeyValue( "DontUseSpeechSemaphone", "0" );
		NPC.KeyValue( "renderamt", "255" );
		NPC.KeyValue( "wakesquad", "0" );
		NPC.KeyValue( "wakeradius", "0" );
		NPC.KeyValue( "GameEndAlly", "0" );
		NPC.KeyValue( "hintlimiting", "0" );
		NPC.KeyValue( "ignoreunseenenemies", "0" );
		NPC.KeyValue( "sleepstate", "0" );
	}
	
	return NPC;
}

// Creates a spark.
CBaseEntity@ SpawnSpark(string Magnitude, string SparkTrailLength, string MaxDelay = "0", bool Glow = true)
{
	CBaseEntity@ spark = CreateEnt("env_spark");
	if (@spark != null)
	{
		spark.KeyValue( "angles", "0 0 0" );
		
		Magnitude.toLower();
		SparkTrailLength.toLower();
		if (Magnitude == "small")
			spark.KeyValue( "Magnitude", "1" );
		else if (Magnitude == "medium")
			spark.KeyValue( "Magnitude", "2" );
		else if (Magnitude == "large")
			spark.KeyValue( "Magnitude", "5" );
		else if (Magnitude == "huge")
			spark.KeyValue( "Magnitude", "8" );
		
		spark.KeyValue( "MaxDelay", MaxDelay );
		
		if (Glow)
			spark.KeyValue( "spawnflags", "128" );
		else
			spark.KeyValue( "spawnflags", "0" );
		
		if (SparkTrailLength == "short")
			spark.KeyValue( "TrailLength", "1" );
		else if (SparkTrailLength == "medium")
			spark.KeyValue( "TrailLength", "2" );
		else if (SparkTrailLength == "long")
			spark.KeyValue( "TrailLength", "3" );
	}
	
	return spark;
}