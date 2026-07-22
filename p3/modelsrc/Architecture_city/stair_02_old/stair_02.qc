// Created by Crowbar 0.74

$modelname "architecture_city/stair_02_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "stair_02.smd" "#stair_02"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition -0.192 14.263 215.715

$cdmaterials "models\architecture_city\"

$cbox 0 0 0 0 0 0

$bbox -77.153 -81.166 -0.884 48.627 80.783 432.313

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"stair_02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "stair_02_physics.smd"
{
	$mass 767.0498
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 6

}
