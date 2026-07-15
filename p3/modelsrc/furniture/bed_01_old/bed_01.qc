// Created by Crowbar 0.74

$modelname "furniture/bed_01_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bed_01.smd" "#bed_01"
}


$surfaceprop "carpet"

$contents "solid"

$illumposition 2.347 0.064 16.356

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -58.11 -60.534 -0.25 57.982 65.194 32.731

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bed_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "bed_01_physics.smd"
{
	$mass 28.73557
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
