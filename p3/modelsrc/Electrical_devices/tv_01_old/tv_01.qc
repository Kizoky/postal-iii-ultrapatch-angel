// Created by Crowbar 0.74

$modelname "electrical_devices/tv_01_old.mdl"

$bodygroup "Body"
{
	studio "tv_01.smd" "#tv_01"
}


$surfaceprop "computer"

$contents "solid"

$illumposition 0.011 2.997 14.167

$cdmaterials "models\electrical_devices\"

$cbox 0 0 0 0 0 0

$bbox -15.424 -14.21 -0.366 9.419 14.195 28.612

$definebone "polySurface1" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tv_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "tv_01_physics.smd"
{
	$mass 23.31309
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
