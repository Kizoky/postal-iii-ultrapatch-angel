// Created by Crowbar 0.74

$modelname "furniture/wardrobe_02_a.mdl"

$staticprop

$bodygroup "Body"
{
	studio "wardrobe_02_a.smd" "#wardrobe_02_a"
}


$surfaceprop "Wood_Furniture"

$contents "solid"

$illumposition -0.039 -12.675 43.619

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -0.248 -20.531 -0.25 25.35 20.352 87.367

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"wardrobe_02_a_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "wardrobe_02_a_physics.smd"
{
	$mass 987.0959
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
