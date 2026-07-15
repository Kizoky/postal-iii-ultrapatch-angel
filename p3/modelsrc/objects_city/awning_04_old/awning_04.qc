// Created by Crowbar 0.74

$modelname "objects_city/awning_04_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "awning_04.smd" "#awning_04"
}


$surfaceprop "plastic"

$contents "solid"

$illumposition -38.921 25.002 9.95

$cdmaterials "models\objects_city\"

$cbox 0 0 0 0 0 0

$bbox -397.115 -77.842 -27.983 347.257 0 48.559

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"awning_04_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "awning_04_physics.smd"
{
	$mass 410.1086
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 14

}
