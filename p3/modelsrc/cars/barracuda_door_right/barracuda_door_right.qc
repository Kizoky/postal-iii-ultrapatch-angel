// Created by Crowbar 0.74

$modelname "cars/barracuda_door_right.mdl"

$bodygroup "Body"
{
	studio "barracuda_door_right.smd" "#barracuda_door_right"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition -3.667 22.143 23.001

$cdmaterials "models\cars\"

$cbox 0 0 0 0 0 0

$bbox -44.286 -38.588 0 0 31.182 46.002

$definebone "polySurface21_3637" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"barracuda_door_right_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "barracuda_door_right_physics.smd"
{
	$mass 20.72942
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.Medium"
	}
}
