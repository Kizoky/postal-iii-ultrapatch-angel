// Created by Crowbar 0.74

$modelname "furniture/File_cabinet_01.mdl"

$bodygroup "Body"
{
	studio "File_cabinet_01.smd" "#File_cabinet_01"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 32

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -8.179 -10.022 -0.264 8.179 9.752 64.316

$definebone "File_cabinet_01" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"file_cabinet_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "file_cabinet_01_physics.smd"
{
	$mass 60
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
