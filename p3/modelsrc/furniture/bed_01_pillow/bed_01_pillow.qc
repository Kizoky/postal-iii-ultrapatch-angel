// Created by Crowbar 0.74

$modelname "furniture/bed_01_pillow.mdl"

$bodygroup "Body"
{
	studio "bed_01_pillow.smd" "#bed_01_pillow"
}


$surfaceprop "carpet"

$contents "solid"

$illumposition 0.009 0.039 4.489

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -21.425 -13.768 -0.647 21.404 13.785 9.225

$definebone "polySurface6" "" -0.002142 0 0.009732 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bed_01_pillow_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "bed_01_pillow_physics.smd"
{
	$mass 1.990307
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
