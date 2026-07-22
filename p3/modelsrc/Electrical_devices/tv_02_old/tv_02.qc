// Created by Crowbar 0.74

$modelname "electrical_devices/tv_02_old.mdl"

$bodygroup "Body"
{
	studio "tv_02.smd" "#tv_02"
}


$surfaceprop "computer"

$contents "solid"

$illumposition 0.203 3.87 15.942

$cdmaterials "models\electrical_devices\"

$cbox 0 0 0 0 0 0

$bbox -15.453 -23.694 -0.366 7.953 24.146 32.231

$definebone "polySurface1" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tv_02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "tv_02_physics.smd"
{
	$mass 39.59932
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
