// Created by Crowbar 0.74

$modelname "nature/Tree_03_Leaves_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_03_Leaves.smd" "#Tree_03_Leaves"
}


$surfaceprop "foliage"

$contents "solid"

$illumposition 0.709 2.267 349.589

$cdmaterials "models\nature\"

$cbox 0 0 0 0 0 0

$bbox -396.897 -396.987 0 392.364 398.405 701.946

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tree_03_leaves_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "tree_03_leaves_physics.smd"
{
	$mass 1820557
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 364

}
