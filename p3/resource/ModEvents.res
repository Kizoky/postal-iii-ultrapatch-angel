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
	
	"entity_firedup"
	{
		"entityindex" "long"
	}
	
	// Needed to preserve roasted entities from server to client properly
	"entity_firedup_sv_cl"
	{
		"entityindex" "long"
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
		"inflictor_name" "string"

		"victim_id"		"long"
		
		"killer_name"	"string"
		"victim_name"	"string"
		
		"killer_cop"	"bool"
		"killer_zombie"	"bool"
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
		"cat_id"		"long"
		"player_id"		"long"
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
	
	"p3_npc_player_kill"
	{
	}
	
	"p3_toggle_scoreboard"
	{
	}
	
	"p3_mp_cvar_change"
	{
		"cvar"		"string"
		"value"		"long"
	}
	
	"p3_mp_chat"
	{
		"chat"		"string"
	}
	
	"set_instructor_group_enabled"
	{
		"group"		"string"
		"enabled"	"short"
	}
	
	"instructor_server_hint_create" //create a hint using data supplied entirely by the server/map. Intended for hints to smooth playtests before content is ready to make the hint unneccessary. NOT INTENDED AS A SHIPPABLE CRUTCH
	{
		"hint_name"					"string"	// what to name the hint. For referencing it again later (e.g. a kill command for the hint instead of a timeout)
		"hint_replace_key"			"string"	// type name so that messages of the same type will replace each other
		"hint_target"				"long"		// entity id that the hint should display at
		"hint_activator_userid"		"short"		// userid id of the activator
		"hint_timeout"				"short"	 	// how long in seconds until the hint automatically times out, 0 = never
		"hint_icon_onscreen"		"string"	// the hint icon to use when the hint is onscreen. e.g. "icon_alert_red"
		"hint_icon_offscreen"		"string"	// the hint icon to use when the hint is offscreen. e.g. "icon_alert"
		"hint_caption"				"string"	// the hint caption. e.g. "#ThisIsDangerous"
		"hint_activator_caption"	"string"	// the hint caption that only the activator sees e.g. "#YouPushedItGood"
		"hint_color"				"string"	// the hint color in "r,g,b" format where each component is 0-255
		"hint_icon_offset"			"float"		// how far on the z axis to offset the hint from entity origin
		"hint_range"				"float"		// range before the hint is culled
		"hint_flags"				"long"		// hint flags
		"hint_binding"				"string"	// bindings to use when use_binding is the onscreen icon
		"hint_allow_nodraw_target"	"bool"		// if false, the hint will dissappear if the target entity is invisible
		"hint_nooffscreen"			"bool"		// if true, the hint will not show when outside the player view
		"hint_forcecaption"			"bool"		// if true, the hint caption will show even if the hint is occluded
		"hint_local_player_only"	"bool"		// if true, only the local player will see the hint
	}
	
	"instructor_server_hint_stop" //destroys a server/map created hint
	{
		"hint_name"					"string"	// The hint to stop. Will stop ALL hints with this name
	}
	
	// Events for the sample lesson, you can edit or delete them.
	// See: scripts/instructor_lessons.txt
	"instructor_primaryattack"
	{
		"userid" 	"short"
	}
	"use_primaryattack"
	{
		"userid" 	"short"
	}
}
