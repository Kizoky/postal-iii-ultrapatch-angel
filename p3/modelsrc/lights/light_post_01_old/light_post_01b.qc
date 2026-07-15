// Created by Crowbar 0.74

$modelname "lights/Light_Post_01_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Light_Post_01.smd" "#Light_Post_01"
}


$surfaceprop "default"

$contents "solid"

$illumposition 44.159 0 174.515

$cdmaterials "models\lights\"

$cbox 0 0 0 0 0 0

$bbox -7.797 -6.828 -9.215 7.798 94.981 358.244

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"light_post_01b_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "light_post_01b_physics.smd"
{
	$mass 1425.826
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
