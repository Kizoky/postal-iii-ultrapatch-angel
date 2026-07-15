// Created by Crowbar 0.74

$modelname "doors_windows/hotel_window_b_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "hotel_window_b.smd" "#hotel_window_b"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 8.712 39.163 51.312

$cdmaterials "models\doors_windows\"

$cbox 0 0 0 0 0 0

$bbox -78.55 -8.618 -0.717 0 25.784 103.961

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"hotel_window_b_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "hotel_window_b_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 19

}
