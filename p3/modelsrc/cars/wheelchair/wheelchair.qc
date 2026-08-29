// Created by Crowbar 0.74

$ModelName "cars/wheelchair/wheelchair.mdl"

$origin 0 0 0 90

$BodyGroup "Body"
{
	studio "LOD0.smd"
}


$LOD 50
{
	replacemodel "LOD0.smd" "LOD1.smd"
	replacebone "remote" "root"
	NoFacial
}

$ShadowLOD
{
	replacemodel "LOD0.smd" "LOD1.smd"
	replacebone "remote" "root"
	replacebone "back_l" "root"
	replacebone "back_r" "root"
	replacebone "front_l" "frontrot_l"
	replacebone "front_r" "frontrot_r"
	NoFacial
}

$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0.775 0 51.547

$NoForcedFade

$CDMaterials "models\Cars\wheelchair\"

$CBox 0 0 0 0 0 0

$HBoxSet "default"

$Attachment "wheel_rl" "back_r" 0 0 0 rotate 0 180 90
$Attachment "wheel_rr" "back_l" 0 0 0 rotate 0 0 -90
$Attachment "wheel_fl" "front_l" 0 0 0 rotate 0 0 -90
$Attachment "wheel_fr" "front_r" 0 0 0 rotate 180 0 90
$Attachment "vehicle_driver_eyes" "root" 0 55 0 rotate -90 -90 0
$Attachment "vehicle_driver_exit" "root" 0 -0 40 rotate -90 -90 0
$Attachment "vehicle_engine" "root" 0 5 -5 rotate 0 0 0
$Attachment "vehicle_feet_passenger0" "root" 0 5 0 rotate -90 -90 0
$Attachment "vehicle_feet_passenger0_ron" "root" 0 5 5 rotate -90 -90 0
$attachment "hand_r" "root" -15.5 31 10 rotate 90 0 0
$attachment "hand_l" "root" 15.5 33 20.5 rotate -90 -180 -90
$Attachment "foot_r" "root" -6 5 15 rotate -0 0 -5
$Attachment "foot_l" "Root" 6 5 15 rotate 0 0 175
//$Attachment "krotchy_box" "Root" 0 0 -13 rotate 0 0 90

$PoseParameter "vehicle_steer" -1 1 loop 0
//$PoseParameter "vehicle_wheel_fl_height" 0 1 loop 0
//$PoseParameter "vehicle_wheel_fr_height" 0 1 loop 0

$PoseParameter "vehicle_wheel_fl_spin" -180 180 loop 360
$PoseParameter "vehicle_wheel_fr_spin" -180 180 loop 360
$PoseParameter "vehicle_wheel_rl_spin" -180 180 loop 360
$PoseParameter "vehicle_wheel_rr_spin" -180 180 loop 360

$WeightList "weights_turning" {
	"root" 0
	"frontrot_r" 1
	"front_r" 0
	"back_l" 0
	"back_r" 0
	"frontrot_l" 1
	"front_l" 0
	"remote" 1
}

$WeightList "weights_wheel_rl_spin" {
	"root" 0
	"frontrot_r" 0
	"front_r" 0
	"back_l" 1
	"back_r" 0
	"frontrot_l" 0
	"front_l" 0
	"remote" 0
}

$WeightList "weights_wheel_rr_spin" {
	"root" 0
	"frontrot_r" 0
	"front_r" 0
	"back_l" 0
	"back_r" 1
	"frontrot_l" 0
	"front_l" 0
	"remote" 0
}

$WeightList "weights_wheel_fl_spin" {
	"root" 0
	"frontrot_r" 0
	"front_r" 0
	"back_l" 0
	"back_r" 0
	"frontrot_l" 0
	"front_l" 1
	"remote" 0
}

$WeightList "weights_wheel_fr_spin" {
	"root" 0
	"frontrot_r" 0
	"front_r" 1
	"back_l" 0
	"back_r" 0
	"frontrot_l" 0
	"front_l" 0
	"remote" 0
}

$Sequence "idle" {
	"LOD0.smd"
	activity "ACT_IDLE" -1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "neutral" {
	"LOD0.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Animation "turn_left" "anims\turn_left.smd" {
	fps 30
	weightlist "weights_turning"
}
$Animation "turn_right" "anims\turn_right.smd" {
	fps 30
	weightlist "weights_turning"
}

$Animation "wheel_rr_spin0" "anims\blank.smd" {
	fps 30
	weightlist "weights_wheel_rr_spin"
}
$Animation "wheel_rr_spin120" "anims\rr_120.smd" {
	fps 30
	weightlist "weights_wheel_rr_spin"
}
$Animation "wheel_rr_spin240" "anims\rr_240.smd" {
	fps 30
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rl_spin0" "anims\blank.smd" {
	fps 30
	weightlist "weights_wheel_rl_spin"
}
$Animation "wheel_rl_spin120" "anims\rl_120.smd" {
	fps 30
	weightlist "weights_wheel_rl_spin"
}
$Animation "wheel_rl_spin240" "anims\rl_240.smd" {
	fps 30
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_fr_spin0" "anims\blank.smd" {
	fps 30
	weightlist "weights_wheel_fr_spin"
}
$Animation "wheel_fr_spin120" "anims\fr_120.smd" {
	fps 30
	weightlist "weights_wheel_fr_spin"
}
$Animation "wheel_fr_spin240" "anims\fr_240.smd" {
	fps 30
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fl_spin0" "anims\blank.smd" {
	fps 30
	weightlist "weights_wheel_fl_spin"
}
$Animation "wheel_fl_spin120" "anims\fl_120.smd" {
	fps 30
	weightlist "weights_wheel_fl_spin"
}
$Animation "wheel_fl_spin240" "anims\fl_240.smd" {
	fps 30
	weightlist "weights_wheel_fl_spin"
}

$Sequence "turning" {
	"turn_left"
	"turn_right"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$Sequence "wheel_fr_spin" {
	"wheel_fr_spin0"
	"wheel_fr_spin120"
	"wheel_fr_spin240"
	"wheel_fr_spin0"
	autoplay
	blend "vehicle_wheel_fr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}

$Sequence "wheel_fl_spin" {
	"wheel_fl_spin0"
	"wheel_fl_spin120"
	"wheel_fl_spin240"
	"wheel_fl_spin0"
	autoplay
	blend "vehicle_wheel_fl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}

$Sequence "wheel_rr_spin" {
	"wheel_rr_spin0"
	"wheel_rr_spin120"
	"wheel_rr_spin240"
	"wheel_rr_spin0"
	autoplay
	blend "vehicle_wheel_rr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}

$Sequence "wheel_rl_spin" {
	"wheel_rl_spin0"
	"wheel_rl_spin120"
	"wheel_rl_spin240"
	"wheel_rl_spin0"
	autoplay
	blend "vehicle_wheel_rl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}

$CollisionModel "phys.smd"
{
	$mass 800
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 9

}

$Include "DefineBones.qci"

$Include "DefineBones.qci"
