// Created by Crowbar 0.74

$modelname "nature/Tree_04_leaves_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_04_leaves.smd" "#Tree_04_leaves"
}


$surfaceprop "foliage"

$contents "solid"

$illumposition 1.962 0.792 302.123

$cdmaterials "models\nature\"

$cbox 0 0 0 0 0 0

$bbox -69.755 -74.991 0 68.171 78.915 604.495

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"Tree_04_leaves_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "Tree_04_leaves_physics.smd"
{
	$mass 66226.15
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 236

}
