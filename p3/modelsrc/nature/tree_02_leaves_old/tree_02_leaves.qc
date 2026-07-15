// Created by Crowbar 0.74

$modelname "nature/Tree_02_Leaves_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_02_Leaves.smd" "#Tree_02_Leaves"
}


$surfaceprop "foliage"

$contents "solid"

$illumposition 2.467 -4.729 104.736

$cdmaterials "models\nature\"

$cbox 0 0 0 0 0 0

$bbox -56.587 -56.902 0 66.044 61.836 209.722

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tree_02_leaves_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "tree_02_leaves_physics.smd"
{
	$mass 11668.81
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 25

}
