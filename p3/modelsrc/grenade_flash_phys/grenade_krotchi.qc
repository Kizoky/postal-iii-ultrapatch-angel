// Created by Crowbar 0.74

$modelname "weapons/grenade/grenade_flash_phys.mdl"

$bodygroup "Body"
{
	studio "grenade_krotchi.smd" "#grenade_krotchi"
}


$surfaceprop "grenade"

$contents "solid"

$illumposition 1.788 -4.025 3.109

$cdmaterials "models\weapons\grenade\"

$cbox 0 0 0 0 0 0

$bbox 0 -0.258 -1.585 8.101 3.828 7.879

$definebone "bip_hand_R" "" 0 0 0 89.999982 89.999982 0 0 0 0 0 0 0
$definebone "pistol" "bip_hand_R" -3.341392 -1.879805 -0.946303 -12.139258 0.303152 -0.147651 0 0 0 0 0 0


$sectionframes 30 178

$sequence "idle" {
	"grenade_krotchi_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attach_to_cat" {
	"grenade_krotchi_anims\attach_to_cat.smd"
	activity "ACT_GRENADE_ATTACH_TO_CAT" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$collisionmodel "grenade_krotchi_physics.smd"
{
	$mass 0.430618
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
