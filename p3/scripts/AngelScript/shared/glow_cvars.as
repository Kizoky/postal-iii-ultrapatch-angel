// These cvars must exist both on server and client for the modding page to work properly with the FCVAR_REPLICATED flag
// Add FCVAR_AS_IMGUI flag if it should appear on the Mods page

#ifdef SHARED
ConVar@ cv_glow = CreateCVar("p3_ultrapatch_gameplay_glow", "1", FCVAR_REPLICATED | FCVAR_NOTIFY | FCVAR_ARCHIVE, "#IMGUI_Settings_Mods_GlowDesc", "#IMGUI_Settings_Mods_Glow");
ConVar@ cv_glow_inst = CreateCVar("p3_ultrapatch_gameplay_glow_instant", "0", FCVAR_REPLICATED | FCVAR_NOTIFY | FCVAR_ARCHIVE, "#IMGUI_Settings_Mods_GlowInstDesc", "#IMGUI_Settings_Mods_GlowInst");
#endif