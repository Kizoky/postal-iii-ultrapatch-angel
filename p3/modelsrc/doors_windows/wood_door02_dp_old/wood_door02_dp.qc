// Created by Crowbar 0.74

$modelname "doors_windows/wood_door02_dp_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "wood_door02_dp.smd" "#wood_door02_dp"
}


$surfaceprop "Wood_Box"

$contents "solid"

$illumposition -0.103 -0.015 53.226

$cdmaterials "models\doors_windows\"

$cbox 0 0 0 0 0 0

$bbox -9.635 -40.278 -0.25 9.578 40.212 106.608

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"wood_door02_dp_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "wood_door02_dp_physics.smd"
{
	$mass 363.8849
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
