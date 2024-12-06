//#include "../Utils.as"

class Template_Example : IPostal3Script
{
	int hoboGender;
	
	void SpawnTemplate(string spawnspot, string template)
	{
		array<string> randomizeNP = 
		{
			"m_avg_pants_w",
			"m_avg_suit_w",
			"m_big_w",
			"f_avg_postal_babe_w",
			"m_big_b",
			"m_avg_suit_b",
			"m_avg_pants_b",
			"m_avg_pants_cop_w_blue",
			"m_avg_pants_cop_w_black",
			"m_avg_pants_cop_w_brown"
		};
		
		array<string> randomizeBH =
		{
			"bh_behavior1",
			"bh_behavior2",
			"bh_behavior3",
			"bh_behavior4",
			"bh_behavior5",
			"bh_myother_behavior1",
			"bh_myother_behavior2",
			"bh_myother_behavior3",
			"bh_myother_behavior4",
			"bh_super_secret_behavior"
		};
		
		array<CBaseEntity@> spawnspots = FindEntsByName(spawnspot);
		if (spawnspots.length() <= 0)
		{
			Warning("Template_Example::SpawnTemplate: Couldn't find '%s' spawn spot!! This should not happen!!!\n", spawnspot);
			engine.ClientCommand("toggleconsole");
			return;
		}
		
		for (uint i = 0; i < spawnspots.length(); i++)
		{
			// Randomize the templates from the Map...
			if (template == "randomizeNP")
				template = randomizeNP[RandomInt(0,randomizeNP.length()-1)];
			else if (template == "randomizeSW")
			{
				if (hoboGender == 0)
				{
					template = "m_avg_hobo";
					hoboGender = 1;
				}
				else
				{
					template = "f_avg_hobo";
					hoboGender = 0;
				}
			}
			
			// Get random data from a template if there are multiple
			string templateData = GetTemplateDataRandom(template);
			
			// Attempt parsing the entity, this should not be null
			CBaseEntity@ pTemplateNPC = ParseEntity(templateData);
			if (pTemplateNPC == null)
				continue;
			
			// Randomization process
			Vector vec = spawnspots[i].GetAbsOrigin();
			QAngle ang = QAngle(0,RandomFloat(-360,360),0);
			
			pTemplateNPC.SetAbsOrigin(vec);
			pTemplateNPC.SetAbsAngles(ang);
			
			// THIS is very important to do!!
			// Don't forget removing the template flag before spawning the NPC in
			pTemplateNPC.RemoveSpawnFlags(SF_NPC_TEMPLATE);
			
			// Note: We already parsed the entity BUT you can still override (key) values if you want to!
			// This is not necessary, but if you want to spice up the randomness it's recommended to do it
			//-------------------------------------------------------------------------------------------
			// Randomize the behavior... if you want to of course
			//string randomBehavior = randomizeBH[RandomInt(0, randomizeBH.length()-1)];
			
			//pTemplateNPC.KeyValue("FSMBehavior", randomBehavior);
			
			//pTemplateNPC.KeyValue("InitState", "st_init");
			
			// You can also add a custom name for entities if you want to clean them up later..
			//pTemplateNPC.SetName("template_cleanup");
			//-------------------------------------------------------------------------------------------
			
			Spawn(pTemplateNPC);
		}
	}
	
	// This was made because the NPC Maker wasn't consistent enough unfortunately
	void SetupTemplateNPCs()
	{
		hoboGender = 0;
		
		// This will spawn an NPC from the template "m_avg_mycustomnpc"
		SpawnTemplate("sp_spawnpoint_example1", "m_avg_mycustomnpc");
		
		// This will randomize the template to choose from
		SpawnTemplate("sp_spawnpoint_example2", "randomizeNP");
		
		// This will spawn a random male or female hobo
		SpawnTemplate("sp_spawnpoint_example3", "randomizeSW");
	}
}