// Created by Crowbar 0.74

$modelname "furniture/bed_01_grid.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bed_01_grid.smd" "#bed_01_grid"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition 1.47 0.169 26.582

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -47.507 -62.636 -0.226 47.168 65.576 53.901

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bed_01_grid_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "bed_01_grid_physics.smd"
{
	$mass 13.47279
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13

}
