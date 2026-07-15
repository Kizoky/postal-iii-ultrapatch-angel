// Created by Crowbar 0.74

$modelname "cars/barracuda.mdl"

$bodygroup "Body"
{
	studio "barracuda.smd" "#barracuda"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition -1.434 0.226 31.307

$cdmaterials "models\cars\"

$cbox 0 0 0 0 0 0

$bbox -44.869 -113.725 0 44.099 110.856 62.614

$definebone "polySurface21" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"barracuda_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "barracuda_physics.smd"
{
	$mass 473.7687
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 11

}
