// Created by Crowbar 0.74

$modelname "doors_windows/wood_door04.mdl"

$bodygroup "Body"
{
	studio "wood_door04.smd" "#wood_door04"
}


$surfaceprop "Wood_Box"

$contents "solid"

$illumposition 29.977 0.135 47

$cdmaterials "models\doors_windows\"

$cbox 0 0 0 0 0 0

$bbox -3.702 -0.315 -0.25 3.432 60.222 95.436

$definebone "polySurface10" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"wood_door04_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "wood_door04_physics.smd"
{
	$mass 135.2731
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
