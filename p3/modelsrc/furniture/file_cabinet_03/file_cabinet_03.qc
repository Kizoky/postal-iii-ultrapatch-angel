// Created by Crowbar 0.74

$modelname "furniture/File_cabinet_03.mdl"

$bodygroup "Body"
{
	studio "File_cabinet_03.smd" "#File_cabinet_03"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 38.36

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -33.071 -12.278 -0.225 33.071 11.883 77.433

$definebone "File_cabinet_03" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"file_cabinet_03_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "file_cabinet_03_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
