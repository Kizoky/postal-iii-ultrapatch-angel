// Created by Crowbar 0.74

$modelname "doors_windows/hotel_window_a_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "hotel_window_a.smd" "#hotel_window_a"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 9.201 -41.336 60.6

$cdmaterials "models\doors_windows\"

$cbox 0 0 0 0 0 0

$bbox 0 -5.194 0 82.928 23.466 121.89

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"hotel_window_a_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "hotel_window_a_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 10

}
