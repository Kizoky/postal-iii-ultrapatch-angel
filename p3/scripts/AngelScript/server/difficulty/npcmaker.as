// Helpers

// possibly could be inside utils.as instead
void CloneNPCAndSpawn(string targetname, string classname)
{
	CBaseEntity@ master = gEntList.FindEntByName(null, targetname);
	if (@master != @null)
	{
		CBaseEntity@ clone = CreateEnt(classname);
		if (@clone != @null)
		{
			clone.KeyValue("Faction", master.GetKeyValue("faction"));
			clone.KeyValue("FSMBehavior", master.GetKeyValue("fsmbehavior"));
			clone.KeyValue("InitState", master.GetKeyValue("initstate"));
			clone.KeyValue("Manner", master.GetKeyValue("manner"));
			clone.KeyValue("model", master.GetKeyValue("model"));
			clone.KeyValue("ModelTemplate", master.GetKeyValue("modeltemplate"));
			clone.KeyValue("spawnflags", master.GetKeyValue("spawnflags"));
			clone.KeyValue("StartState", master.GetKeyValue("startstate"));
			clone.KeyValue("StartWithWeapon", master.GetKeyValue("startwithweapon"));
			clone.KeyValue("additionalequipment", master.GetKeyValue("additionalequipment"));
			clone.KeyValue("NeutralViewRange", master.GetKeyValue("neutralviewrange"));
			clone.KeyValue("NeutralHearRange", master.GetKeyValue("neutralhearrange"));
			clone.KeyValue("squadname", master.GetKeyValue("squadname"));
			
			clone.SetAbsOrigin(master.GetAbsOrigin());
			
			Spawn(clone);
			clone.Activate();
		}
	}
}

void DoAdjust(CBaseEntity@ maker, int multiplier)
{
	int MaxNPCCount = atoi(maker.GetKeyValue("maxnpccount"));
	int MaxLiveChildren = atoi(maker.GetKeyValue("maxlivechildren"));
	
	if (MaxNPCCount > 0)
		MaxNPCCount *= multiplier;
	
	if (MaxLiveChildren > 0)
		MaxLiveChildren *= multiplier;
	
	maker.KeyValue("MaxNPCCount", formatInt(MaxNPCCount));
	maker.KeyValue("MaxLiveChildren", formatInt(MaxLiveChildren));
}

void MultiplyMakerSpawnRate(string npcmaker, int multiplier)
{
	CBaseEntity@ pMonstermaker = gEntList.FindEntByName(null, npcmaker);
	if (@pMonstermaker != @null)
	{
		DoAdjust(pMonstermaker, multiplier);
	}
}

void F_MultiplyMakerSpawnRate(string npcmaker_f, int multiplier)
{
	CBaseEntity@ pEnt = null;
	while ((@pEnt = gEntList.NextEnt(pEnt)) != @null)
	{
		if (FNameIs(pEnt, npcmaker_f))
		{
			DoAdjust(pEnt, multiplier);
		}
	}
}