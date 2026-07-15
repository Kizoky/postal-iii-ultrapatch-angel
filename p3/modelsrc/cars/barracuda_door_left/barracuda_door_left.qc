// Created by Crowbar 0.74

$modelname "cars/barracuda_door_left.mdl"

$bodygroup "Body"
{
	studio "barracuda_door_left.smd" "#barracuda_door_left"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition -3.667 -21.856 23.001

$cdmaterials "models\cars\"

$cbox 0 0 0 0 0 0

$bbox 0 -38.588 0 43.711 31.182 46.002

$definebone "polySurface21_5899" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"barracuda_door_left_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "barracuda_door_left_physics.smd"
{
	$mass 20.73603
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
