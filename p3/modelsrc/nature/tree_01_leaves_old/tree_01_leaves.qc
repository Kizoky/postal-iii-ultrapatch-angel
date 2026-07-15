// Created by Crowbar 0.74

$modelname "nature/Tree_01_leaves_old.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_01_leaves.smd" "#Tree_01_leaves"
}


$surfaceprop "foliage"

$contents "solid"

$illumposition -20.631 2.982 219.496

$cdmaterials "models\nature\"

$cbox 0 0 0 0 0 0

$bbox -130.092 -167.06 0 124.129 125.797 439.241

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"tree_01_leaves_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "tree_01_leaves_physics.smd"
{
	$mass 203450.6
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 227

}
