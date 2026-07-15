// Created by Crowbar 0.74

$modelname "architecture_city/Hotel_Billboard_01_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Hotel_Billboard_01.smd" "#Hotel_Billboard_01"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 13.949 -33.567 137.521

$cdmaterials "models\architecture_city\"

$cbox 0 0 0 0 0 0

$bbox -17.565 -73.371 -0.916 85.467 101.008 276.29

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"Hotel_Billboard_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "Hotel_Billboard_01_physics.smd"
{
	$mass 154.1638
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 20

}
