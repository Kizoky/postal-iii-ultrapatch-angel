// Created by Crowbar 0.74

$modelname "doors_windows/wood_door02_old.mdl"

$bodygroup "Body"
{
	studio "wood_door02.smd" "#wood_door02"
}


$surfaceprop "Wood_Box"

$contents "solid"

$illumposition 30 0.025 47

$cdmaterials "models\doors_windows\"

$cbox 0 0 0 0 0 0

$bbox -5.973 -0.315 -0.25 5.922 60.222 95.436

$definebone "polySurface6" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"wood_door02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "wood_door02_physics.smd"
{
	$mass 135.2731
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
