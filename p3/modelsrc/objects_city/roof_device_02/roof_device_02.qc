// Created by Crowbar 0.74

$modelname "objects_city/roof_device_02.mdl"

$staticprop

$bodygroup "Body"
{
	studio "roof_device_02.smd" "#roof_device_02"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition 18.036 0.134 58.388

$cdmaterials "models\objects_city\"

$cbox 0 0 0 0 0 0

$bbox -24.801 -30.765 0 24.801 67.525 117.175

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"roof_device_02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "roof_device_02_physics.smd"
{
	$mass 99.92207
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
