// Created by Crowbar 0.74

$modelname "furniture/File_cabinet_02.mdl"

$bodygroup "Body"
{
	studio "File_cabinet_02.smd" "#File_cabinet_02"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition 0 0 22.472

$cdmaterials "models\furniture\"

$cbox 0 0 0 0 0 0

$bbox -9.444 -11.639 0 9.444 11.342 45.306

$definebone "File_cabinet_02" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"file_cabinet_02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "file_cabinet_02_physics.smd"
{
	$mass 70
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
