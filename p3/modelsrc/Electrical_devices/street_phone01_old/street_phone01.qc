// Created by Crowbar 0.74

$modelname "electrical_devices/street_phone01_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "street_phone01.smd" "#street_phone01"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition -0.032 -1.887 42.709

$cdmaterials "models\electrical_devices\"

$cbox 0 0 0 0 0 0

$bbox -3.929 -11.064 -0.249 7.453 11.09 85.598

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"street_phone01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "street_phone01_physics.smd"
{
	$mass 23.76348
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
