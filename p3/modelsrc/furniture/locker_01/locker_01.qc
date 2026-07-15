// Created by Crowbar 0.74

$modelname "furniture/Locker_01.mdl"

$bodygroup "Body"
{
	studio "Locker_01.smd" "#Locker_01"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.052 0 37.73

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -10.671 -11.717 -0.237 10.671 11.49 75.882

$definebone "Locker_01" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"locker_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "locker_01_physics.smd"
{
	$mass 32.26336
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
