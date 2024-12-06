// CBaseEntity@ SpawnAmmo(int Ammo, bool bLockInPlace = false)
array<string> SpawnAmmoNum = 
{
	"3",					// M136
	"6",					// PepperSprayCan
	"6",					// Molotov
	"6",					// Grenade
	"100",					// Gasoline
	"6",					// CatnipCan
	"10", 					// DesertEagle
	"20",					// M16
	"20",					// SMG
	"200",					// M60
	"20",					// Taser
	"10",					// Buckshot
};

// CBaseEntity@ SpawnAmmo(int Ammo, bool bLockInPlace = false)      (( UNUSED ))
array<string> SpawnAmmoRaw =
{
	"M136",
	"PepperSprayCan",
	"Molotov",
	"Grenade",
	"Gasoline",
	"CatnipCan",
	"DesertEagle",
	"M16",
	"SMG",
	"M60",
	"Taser",
	"Buckshot",
};

// CBaseEntity@ SpawnAmmo(int Ammo, bool bLockInPlace = false)
enum SpawnAmmo_t
{
	AMMO_ROCKET,			// M136
	AMMO_PEPPERSPRAY,		// PepperSprayCan
	AMMO_MOLOTOV,			// Molotov
	AMMO_GRENADE,			// Grenade
	AMMO_GASOLINE,			// Gasoline
	AMMO_CATNIP,			// CatnipCan
	AMMO_HEAVYPISTOL, 		// DesertEagle
	AMMO_AR,				// M16
	AMMO_SMG,				// SMG
	AMMO_M60,				// M60
	AMMO_TASER,				// Taser
	AMMO_SHOTGUN,			// Buckshot
};

// CBaseEntity@ SpawnNPC(int NPCtype)
enum SpawnNPC_t
{
	NPC_CAT = 0,
	NPC_DOG = 1,
	NPC_MONKEY = 2,
	NPC_MOTORHEAD = 3,
	NPC_CITIZEN = 4,
	NPC_COP = 5,
};