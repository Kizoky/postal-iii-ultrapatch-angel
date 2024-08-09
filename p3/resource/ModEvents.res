//=============================================================================
// POSTAL 3 specific events
//=============================================================================

"modevents"
{
	"shopvac_suckin"
	{
	}

	"shopvac_spitout"
	{
	}

	"OnDialogYesNo"
	{
		"res"			"byte"
	}

	"npc_puke_start"
	{
		"entindex"		"long"
		"attachment"	"byte"
	}

	"npc_puke_stop"
	{
		"entindex"		"long"
	}

	"start_effect"
	{
		"name"			"string"
		"sourceindex"	"long"
		"attach_type"	"byte"
		"attachment"	"string"
		"offset"		"string"
		"targetpoint"	"string"
		"targetindex"	"long"
	}

	"stop_effect"
	{
		"sourceindex"	"long"
		"force"			"bool"
		"name"			"string"
	}

	"fluids_set_envlightorigin"
	{
		"origin"		"string"
	}

	"fluids_add"
	{
		"fluidindex"	"long"
		"type"			"byte"
		"category"		"byte"
		"flags"			"byte"
		"amount"		"float"
		"vel"			"float"
		"origin"		"string"
		"normal"		"string"
		"blackspot"		"bool"
	}

	"fluids_firedup"
	{
		"fluidindex"	"long"
		"time"			"float"
		"duration"		"float"
	}

	"fluids_extinguished"
	{
		"fluidindex"	"long"
	}

	"fluids_delete"
	{
		"fluidindex"	"long"
	}

	"staticprop_firedup"
	{
		"staticpropindex" "long"
		"time"			"float"
		"duration"		"float"
	}

	"headblob"
	{
		"entindex"		"long"
		"name"			"string"
	}

	"npc_taser_start"
	{
		"entindex"		"long"
		"hitbone"		"long"	
		"hitpos"		"string"
		"hitdir"		"string"

		"userid"		"long"
	}

	"npc_taser_end"
	{
		"entindex"		"long"

		"userid"		"long"
	}

	"taser_attack_start"
	{
		"entindex"		"long"
		"targetpos"		"string"
		"targetent"		"long"
	}

	"taser_attack_end"
	{
		"entindex"		"long"
	}

	"taser_charge_start"
	{
		"entindex"		"long"
		"targetpos"		"long"
	}

	"taser_charge_end"
	{
		"entindex"		"long"
	}

	"taser_fireball"
	{
		"entindex"		"long"
		"targetpos"		"string"
	}

	"npc_ragdoll"
	{
		"npcindex"		"long"
		"ragdollindex"	"long"
	}

	"npc_unragdoll"
	{
		"npcindex"		"long"
		"ragdollindex"	"long"
	}

	"player_death"
	{
		"killer_id"		"long"
		"weapon_id"		"long"

		"victim_id"		"long"
	}

	"npc_hit"
	{
		"attacker_id"	"long"
		"weapon_id"		"long"
		"weapon_flags"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"npc_death"
	{
		"attacker_id"	"long"
		"weapon_id"		"long"
		"weapon_flags"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"npc_arrest"
	{
		"attacker_id"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"npc_head_shot"
	{
		"attacker_id"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"npc_on_fire_visible"
	{
	}

	"generic_weapon_attack"
	{
		"attacker_id"	"long"
		"weapon_id"		"long"
		"weapon_type"	"long"
		"attached_weapon_id"	"long"
		"primary_attack"		"bool"
		"ammo_type"		"long"
	}

	"cat_pickup"
	{
	}

	"whistle_start"
	{
		"sender"	"long"
	}

	"npc_butched"
	{
		"attacker_id"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"achievement_earned"
	{
		"achievement"	"long"
	}

	"generic_event"
	{
		"id"	"string"
		"args"	"string"
	}

	"npc_unconscious"
	{
		"attacker_id"	"long"
		"weapon_id"		"long"
		"weapon_flags"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}

	"blur"
	{
		"player_id"		"long"
	}

	"no_blur"
	{
		"player_id"		"long"
	}

	"blur_impulse"
	{
		"player_id"		"long"
		"duration"		"float"
	}

	"join_the_dark_forces"
	{
		"userid"		"long"
	}

	"join_the_alliance"
	{
		"userid"		"long"
	}

	"entity_destroyed"
	{
		"type"			"long"
	}

	"non_melee_fired"
	{
		"userid"		"long"
	}

	"non_pistol_fired"
	{
		"userid"		"long"
	}

	"krotchy_nuke"
	{
		"pos"			"string"
	}

	"photo_flashlight"
	{
	}

	"end_mission"
	{
		"name"			"string"
	}

	"finale_win"
	{
	}

	"plr_wee_start"
	{
	}

	"plr_wee_stop"
	{
	}

	"plr_catnip_start"
	{
	}

	"plr_catnip_stop"
	{
	}

	"window_smashed"
	{
		"userid"		"long"
	}

	"cat_launched"
	{
	}

	"taser_fireball_update"
	{
		"entindex"		"long"
		"pos"		"string"
	}

	"p3_player_respawn"
	{
	}

	"arrest_on_catnip"
	{
	}

	"neckbreaker"
	{
	}

	"champ_kill"
	{
		"attacker_id"	"long"

		"npc_id"		"long"
		"gender"		"long"
		"faction_id"	"long"
		"manner_id"		"long"

		"userid"		"long"
	}
	
	"savegame"
	{
	}
}
