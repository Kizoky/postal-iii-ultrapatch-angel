// Created by Crowbar 0.74

$modelname "cars/barracuda_glass.mdl"

$bodygroup "Body"
{
	studio "barracuda_glass.smd" "#barracuda_glass"
}


$surfaceprop "glass"

$contents "solid"

$illumposition 19.25 0.294 29.978

$cdmaterials "models\cars\"

$cbox 0 0 0 0 0 0

$bbox -36.643 -34.845 0 36.054 73.344 60.207

$definebone "pasted__polySurface28" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"barracuda_glass_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "barracuda_glass_physics.smd"
{
	$mass 546.1158
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
