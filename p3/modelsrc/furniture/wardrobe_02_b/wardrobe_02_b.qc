// Created by Crowbar 0.74

$modelname "furniture/wardrobe_02_b.mdl"

$staticprop

$bodygroup "Body"
{
	studio "wardrobe_02_b.smd" "#wardrobe_02_b"
}


$surfaceprop "Wood_Box"

$contents "solid"

$illumposition -0.253 -12.675 43.619

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -0.248 -16.287 -0.25 25.35 16.024 87.367

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"wardrobe_02_b_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "wardrobe_02_b_physics.smd"
{
	$mass 776.806
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
