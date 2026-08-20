// Created by Crowbar 0.74

$modelname "cars/barracuda_drivable.mdl"

$bodygroup "Cuda_Body"
{
	studio "barracuda.smd" "#barracuda"
}
$bodygroup "Cuda_Door_Left"
{
	studio "barracuda_door_left.smd" "#barracuda_door_left"
}
$bodygroup "Cuda_Door_Right"
{
	studio "barracuda_door_right.smd" "#barracuda_door_right"
}
$bodygroup "Cuda_Glass"
{
	studio "barracuda_glass.smd" "#barracuda_glass"
}
$bodygroup "Cuda_Wheel_01"
{
	studio "wheel_01.smd" "#wheel_01"
}
$bodygroup "Cuda_Wheel_02"
{
	studio "wheel_02.smd" "#wheel_02"
}
$bodygroup "Cuda_Wheel_03"
{
	studio "wheel_03.smd" "#wheel_03"
}
$bodygroup "Cuda_Wheel_04"
{
	studio "wheel_04.smd" "#wheel_04"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.775 0 51.547

$noforcedfade

$cdmaterials "models\cars\"

$attachment "levitate_target" "Rig_Buggy.Gun_Parent" 0 0 0 rotate 0 0 0
$attachment "gun_ref" "Rig_Buggy.Gun" 0 0 0 rotate 0 0 0
$attachment "wheel_fl" "Rig_Buggy.Wheel_FL_Rotate" 0 0 0 rotate 0 0 0
$attachment "wheel_fr" "Rig_Buggy.Wheel_FR_Rotate" 0 0 0 rotate 0 0 0
$attachment "wheel_rl" "Rig_Buggy.Wheel_RL" 0 0 0 rotate 0 0 0
$attachment "wheel_rr" "Rig_Buggy.Wheel_RR" 0 0 0 rotate 0 0 0
$attachment "vehicle_driver_eyes" "Rig_Buggy.view" 14.25 0 -3.8 rotate 0 0 0
$attachment "vehicle_feet_passenger0" "Rig_Buggy.view" 0 0 -30.4 rotate 0 0 0
$attachment "vehicle_engine" "Rig_Buggy.Frame" 0 0 -38 rotate 0 0 0
$attachment "exit1" "Rig_Buggy.Frame" 65.96 26.55 26.62 rotate -90 -90 0
$attachment "exit2" "Rig_Buggy.Frame" -65.96 26.55 26.62 rotate -90 -90 0
$attachment "exit3" "Rig_Buggy.Frame" 5.33 67.4 50.28 rotate -90 -90 0
$attachment "exit4" "Rig_Buggy.Frame" 0 26.55 -104.59 rotate -90 -90 0
$attachment "exit5" "Rig_Buggy.Frame" 0 -70.47 -11.38 rotate -67.83 90 0
$attachment "exit6" "Rig_Buggy.Frame" 0 -70.47 -11.38 rotate -67.83 90 0
$attachment "exit7" "Rig_Buggy.Frame" 66.7 -13.43 -0.99 rotate -51.46 -165.29 -104.71
$attachment "exit8" "Rig_Buggy.Frame" -66.7 -13.43 3.79 rotate -49.87 -14.71 104.71
$attachment "enter1" "Rig_Buggy.Frame" 65.96 18.95 -1.88 rotate 0 -180 90
$attachment "enter2" "Rig_Buggy.Frame" -65.96 18.95 -1.88 rotate 0 0 -90
$attachment "enter3" "Rig_Buggy.Frame" 5.33 59.8 77.3 rotate 55.44 -90 -180
$attachment "enter4" "Rig_Buggy.Frame" 0 18.95 -104.59 rotate -90 -90 0
$attachment "beam_damage" "Rig_Buggy.Frame" 9.5 6.65 27.55 rotate 0 0 0
$attachment "seagull_perch1" "Rig_Buggy.Frame" -17.1 19 50.35 rotate 0 -180 90
$attachment "seagull_perch2" "Rig_Buggy.Frame" 9.5 4.75 83.6 rotate -90 -90 0
$attachment "seagull_perch3" "Rig_Buggy.Frame" -7.6 47.5 -43.7 rotate 90 90 0
$attachment "taucannon" "Rig_Buggy.Frame" -17.1 9.5 50.35 rotate 90 90 0
$attachment "headlight" "Rig_Buggy.Frame" 0 4.75 95 rotate -90 -90 0
$attachment "Muzzle" "Rig_Buggy.Gun" 12 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -99.975 -133.039 -1.093 100.053 108.977 99.002

$hboxset "default"
$hbox 0 "Rig_Buggy.Frame" -28.5 -14.724999 14.724999 28.5 9.025 95.474998
$hbox 0 "Rig_Buggy.Frame" -2.85 -16.15 -17.1 19.949999 23.75 13.3
$hbox 0 "Rig_Buggy.Frame" -28.5 -5.7 -55.099998 28.5 53.200001 -20.9
$hbox 5 "Rig_Buggy.Frame" -28.5 -14.25 -64.125 28.5 33.25 -30.875
$hboxset "entryboxes"
$hbox 1 "Rig_Buggy.Frame" 23.75 -33.25 -47.5 99.75 52.25 47.5
$hbox 2 "Rig_Buggy.Frame" -99.75 -33.25 -47.5 -23.75 52.25 47.5
$hbox 3 "Rig_Buggy.Frame" -38 -19 38 38 66.5 142.5
$skipboneinbbox

$definebone "Rig_Buggy.Frame" "" 0 35.485321 34.0466 0 0 89.999982 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_RR_Sleeve" "Rig_Buggy.Frame" -26.737438 9.978985 -63.177883 -15.18258 -85.695692 0.424161 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_FR_Sleeve" "Rig_Buggy.Frame" -26.847315 6.445412 78.520195 0.32607 -175.639175 15.400762 0 0 0 0 0 0
$definebone "Rig_Buggy.Axel_RR" "Rig_Buggy.Frame" -4.313085 -13.578558 -57.058857 0.000019 -180.000005 -180.000005 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_RR" "Rig_Buggy.Axel_RR" 38.013966 0.147196 -0.19355 -0.000019 180.000005 -180.000005 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_RR_Piston" "Rig_Buggy.Axel_RR" 20.686598 0.469204 -0.164131 -15.182617 85.695733 -178.221834 0 0 0 0 0 0
$definebone "Rig_Buggy.Steer_Arm" "Rig_Buggy.Frame" 0.016516 -11.367849 70.181595 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_FL_Sleeve" "Rig_Buggy.Frame" 26.847315 6.445412 78.520195 -1.11744 -4.085934 164.805867 0 0 0 0 0 0
$definebone "Rig_Buggy.Axel_RL" "Rig_Buggy.Frame" 4.313085 -13.578558 -57.058857 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_RL" "Rig_Buggy.Axel_RL" 38.013966 0.147198 0.19355 0.000019 -180.000005 -180.000005 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_RL_Piston" "Rig_Buggy.Axel_RL" 20.6056 0.473753 0.167809 15.191174 85.610609 -1.39859 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_RL_Sleeve" "Rig_Buggy.Frame" 26.690825 9.982029 -63.178234 -15.191174 -94.38941 0.403534 0 0 0 0 0 0
$definebone "Rig_Buggy.view" "Rig_Buggy.Frame" 9.429615 20.72847 -11.982517 -89.999982 -89.999982 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Gun_Base" "Rig_Buggy.Frame" -16.873423 9.784611 52.968445 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Gun_Parent" "Rig_Buggy.Gun_Base" 0.02079 5.82711 -0.224472 -89.999982 -89.999982 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Gun" "Rig_Buggy.Gun_Parent" 0.000002 0.000002 0 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Speedo" "Rig_Buggy.Frame" 5.664327 9.038128 28.83069 0 0 -70.49999 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FR_Turn_parent" "Rig_Buggy.Frame" -34.710712 -15.13316 78.859528 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FR_Turn" "Rig_Buggy.Wheel_FR_Turn_parent" 0 0.217955 -0.009628 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FR_Rotate" "Rig_Buggy.Wheel_FR_Turn" -6.579208 0 -0.000004 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Axel_FR" "Rig_Buggy.Frame" -14.319742 -15.458982 88.923615 25.537046 -165.470239 -94.85234 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_FR_Piston" "Rig_Buggy.Axel_FR" 11.574886 -2.180904 1.427973 -9.801563 162.176148 -111.194305 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FL_Turn_parent" "Rig_Buggy.Frame" 34.710712 -15.13316 78.859528 -0.000019 180.000005 -180.000005 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FL_Turn" "Rig_Buggy.Wheel_FL_Turn_parent" 0 0.217958 0.009628 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Wheel_FL_Rotate" "Rig_Buggy.Wheel_FL_Turn" -6.579208 0.000002 0 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.Axel_FL" "Rig_Buggy.Frame" 14.319742 -15.458982 88.923615 25.537072 -14.529752 -3.309519 0 0 0 0 0 0
$definebone "Rig_Buggy.Shock_FL_Piston" "Rig_Buggy.Axel_FL" 11.620373 -2.905371 2.149563 -12.137594 5.633091 -15.078587 0 0 0 0 0 0
$definebone "Rig_Buggy.Steer_Wheel" "Rig_Buggy.Frame" 8.930669 9.895988 16.516954 0 0 -67.499987 0 0 0 0 0 0
$definebone "Rig_Buggy.lid" "Rig_Buggy.Frame" -10.478 3.596272 -57.675579 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.latch" "Rig_Buggy.lid" 20.682631 -0.459137 -0.000008 0 0 0 0 0 0 0 0 0
$definebone "Rig_Buggy.gun_cylinders" "Rig_Buggy.Gun" -8.438859 0.038662 0.559093 0 89.999982 89.999982 0 0 0 0 0 0


$poseparameter "vehicle_weapon_yaw" -120 120 loop 0
$poseparameter "vehicle_weapon_pitch" -60 60 loop 0
$poseparameter "vehicle_guage" 0 1 loop 0
$poseparameter "vehicle_steer" -1 1 loop 0
$poseparameter "vehicle_wheel_fl_height" 0 1 loop 0
$poseparameter "vehicle_wheel_fr_height" 0 1 loop 0
$poseparameter "vehicle_wheel_rl_height" 0 1 loop 0
$poseparameter "vehicle_wheel_rr_height" 0 1 loop 0
$poseparameter "vehicle_wheel_fl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_fr_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rr_spin" -180 180 loop 360
$poseparameter "gun_spin" -180 180 loop 360

$weightlist "weights_tau_removed" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 1
	 "Rig_Buggy.Gun" 1
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 1
}

$weightlist "weights_aim_all" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 1
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 1
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_gun_spinning" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 1
}

$weightlist "weights_speedometer" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 1
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_turning" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 1
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 1
	 "Rig_Buggy.Wheel_FR_Rotate" 1
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 1
	 "Rig_Buggy.Wheel_FL_Rotate" 1
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 1
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_fr_suspension" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 1
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 1
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 1
	 "Rig_Buggy.Shock_FR_Piston" 1
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_fr_spin" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 1
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_fl_suspension" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 1
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 1
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 1
	 "Rig_Buggy.Shock_FL_Piston" 1
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_fl_spin" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 1
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_rr_suspension" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 1
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 1
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 1
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_rr_spin" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 1
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_rl_suspension" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 1
	 "Rig_Buggy.Wheel_RL" 0
	 "Rig_Buggy.Shock_RL_Piston" 1
	 "Rig_Buggy.Shock_RL_Sleeve" 1
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$weightlist "weights_wheel_rl_spin" {
	 "Rig_Buggy.Frame" 0
	 "Rig_Buggy.Shock_RR_Sleeve" 0
	 "Rig_Buggy.Shock_FR_Sleeve" 0
	 "Rig_Buggy.Axel_RR" 0
	 "Rig_Buggy.Wheel_RR" 0
	 "Rig_Buggy.Shock_RR_Piston" 0
	 "Rig_Buggy.Steer_Arm" 0
	 "Rig_Buggy.Shock_FL_Sleeve" 0
	 "Rig_Buggy.Axel_RL" 0
	 "Rig_Buggy.Wheel_RL" 1
	 "Rig_Buggy.Shock_RL_Piston" 0
	 "Rig_Buggy.Shock_RL_Sleeve" 0
	 "Rig_Buggy.view" 0
	 "Rig_Buggy.Gun_Base" 0
	 "Rig_Buggy.Gun_Parent" 0
	 "Rig_Buggy.Gun" 0
	 "Rig_Buggy.Speedo" 0
	 "Rig_Buggy.Wheel_FR_Turn_parent" 0
	 "Rig_Buggy.Wheel_FR_Turn" 0
	 "Rig_Buggy.Wheel_FR_Rotate" 0
	 "Rig_Buggy.Axel_FR" 0
	 "Rig_Buggy.Shock_FR_Piston" 0
	 "Rig_Buggy.Wheel_FL_Turn_parent" 0
	 "Rig_Buggy.Wheel_FL_Turn" 0
	 "Rig_Buggy.Wheel_FL_Rotate" 0
	 "Rig_Buggy.Axel_FL" 0
	 "Rig_Buggy.Shock_FL_Piston" 0
	 "Rig_Buggy.Steer_Wheel" 0
	 "Rig_Buggy.lid" 0
	 "Rig_Buggy.latch" 0
	 "Rig_Buggy.gun_cylinders" 0
}

$animation "gun_spin0_corrective_animation" "barracuda_drivable_anims\gun_spin0_corrective_animation.smd" {
}

$animation "gun_spin120_corrective_animation" "barracuda_drivable_anims\gun_spin120_corrective_animation.smd" {
}

$animation "gun_spin240_corrective_animation" "barracuda_drivable_anims\gun_spin240_corrective_animation.smd" {
}

$animation "slow_corrective_animation" "barracuda_drivable_anims\slow_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "barracuda_drivable_anims\mid_corrective_animation.smd" {
}

$animation "fast_corrective_animation" "barracuda_drivable_anims\fast_corrective_animation.smd" {
}

$animation "turn_left_corrective_animation" "barracuda_drivable_anims\turn_left_corrective_animation.smd" {
}

$animation "turn_right_corrective_animation" "barracuda_drivable_anims\turn_right_corrective_animation.smd" {
}

$animation "wheel_fr_low_corrective_animation" "barracuda_drivable_anims\wheel_fr_low_corrective_animation.smd" {
}

$animation "wheel_fr_high_corrective_animation" "barracuda_drivable_anims\wheel_fr_high_corrective_animation.smd" {
}

$animation "wheel_fr_spin0_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin0_corrective_animation.smd" {
}

$animation "wheel_fr_spin120_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin120_corrective_animation.smd" {
}

$animation "wheel_fr_spin240_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin240_corrective_animation.smd" {
}

$animation "wheel_fl_low_corrective_animation" "barracuda_drivable_anims\wheel_fl_low_corrective_animation.smd" {
}

$animation "wheel_fl_high_corrective_animation" "barracuda_drivable_anims\wheel_fl_high_corrective_animation.smd" {
}

$animation "wheel_fl_spin0_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin0_corrective_animation.smd" {
}

$animation "wheel_fl_spin120_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin120_corrective_animation.smd" {
}

$animation "wheel_fl_spin240_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin240_corrective_animation.smd" {
}

$animation "wheel_rr_low_corrective_animation" "barracuda_drivable_anims\wheel_rr_low_corrective_animation.smd" {
}

$animation "wheel_rr_high_corrective_animation" "barracuda_drivable_anims\wheel_rr_high_corrective_animation.smd" {
}

$animation "wheel_rr_spin0_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin0_corrective_animation.smd" {
}

$animation "wheel_rr_spin120_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin120_corrective_animation.smd" {
}

$animation "wheel_rr_spin240_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin240_corrective_animation.smd" {
}

$animation "wheel_rl_low_corrective_animation" "barracuda_drivable_anims\wheel_rl_low_corrective_animation.smd" {
}

$animation "wheel_rl_high_corrective_animation" "barracuda_drivable_anims\wheel_rl_high_corrective_animation.smd" {
}

$animation "wheel_rl_spin0_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin0_corrective_animation.smd" {
}

$animation "wheel_rl_spin120_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin120_corrective_animation.smd" {
}

$animation "wheel_rl_spin240_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin240_corrective_animation.smd" {
}

$animation "gun_spin0_corrective_animation" "barracuda_drivable_anims\gun_spin0_corrective_animation.smd" {
	fps 30
}

$animation "gun_spin120_corrective_animation" "barracuda_drivable_anims\gun_spin120_corrective_animation.smd" {
	fps 30
}

$animation "gun_spin240_corrective_animation" "barracuda_drivable_anims\gun_spin240_corrective_animation.smd" {
	fps 30
}

$animation "slow_corrective_animation" "barracuda_drivable_anims\slow_corrective_animation.smd" {
	fps 30
}

$animation "mid_corrective_animation" "barracuda_drivable_anims\mid_corrective_animation.smd" {
	fps 30
}

$animation "fast_corrective_animation" "barracuda_drivable_anims\fast_corrective_animation.smd" {
	fps 30
}

$animation "turn_left_corrective_animation" "barracuda_drivable_anims\turn_left_corrective_animation.smd" {
	fps 30
}

$animation "turn_right_corrective_animation" "barracuda_drivable_anims\turn_right_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_low_corrective_animation" "barracuda_drivable_anims\wheel_fr_low_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_high_corrective_animation" "barracuda_drivable_anims\wheel_fr_high_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin0_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin120_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin240_corrective_animation" "barracuda_drivable_anims\wheel_fr_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_low_corrective_animation" "barracuda_drivable_anims\wheel_fl_low_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_high_corrective_animation" "barracuda_drivable_anims\wheel_fl_high_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin0_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin120_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin240_corrective_animation" "barracuda_drivable_anims\wheel_fl_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_low_corrective_animation" "barracuda_drivable_anims\wheel_rr_low_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_high_corrective_animation" "barracuda_drivable_anims\wheel_rr_high_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin0_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin120_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin240_corrective_animation" "barracuda_drivable_anims\wheel_rr_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_low_corrective_animation" "barracuda_drivable_anims\wheel_rl_low_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_high_corrective_animation" "barracuda_drivable_anims\wheel_rl_high_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin0_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin120_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin240_corrective_animation" "barracuda_drivable_anims\wheel_rl_spin240_corrective_animation.smd" {
	fps 30
}

$animation "a_tau_removed" "barracuda_drivable_anims\a_tau_removed.smd" {
	fps 30
	weightlist "weights_tau_removed"
}

$animation "neutral" "barracuda_drivable_anims\neutral.smd" {
	fps 30
}

$animation "down_left" "barracuda_drivable_anims\down_left.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "down_center" "barracuda_drivable_anims\down_center.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "down_right" "barracuda_drivable_anims\down_right.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "mid_left" "barracuda_drivable_anims\mid_left.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "mid_center" "barracuda_drivable_anims\mid_center.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "mid_right" "barracuda_drivable_anims\mid_right.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "up_left" "barracuda_drivable_anims\up_left.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "up_center" "barracuda_drivable_anims\up_center.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "up_right" "barracuda_drivable_anims\up_right.smd" {
	fps 30
	weightlist "weights_aim_all"
}

$animation "gun_spin0" "barracuda_drivable_anims\gun_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "gun_spin0_corrective_animation" 0
	weightlist "weights_gun_spinning"
}

$animation "gun_spin120" "barracuda_drivable_anims\gun_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "gun_spin120_corrective_animation" 0
	weightlist "weights_gun_spinning"
}

$animation "gun_spin240" "barracuda_drivable_anims\gun_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "gun_spin240_corrective_animation" 0
	weightlist "weights_gun_spinning"
}

$animation "slow" "barracuda_drivable_anims\slow.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "slow_corrective_animation" 0
	weightlist "weights_speedometer"
}

$animation "mid" "barracuda_drivable_anims\mid.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "mid_corrective_animation" 0
	weightlist "weights_speedometer"
}

$animation "fast" "barracuda_drivable_anims\fast.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "fast_corrective_animation" 0
	weightlist "weights_speedometer"
}

$animation "turn_left" "barracuda_drivable_anims\turn_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "turn_left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "turn_right" "barracuda_drivable_anims\turn_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "turn_right_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "wheel_fr_low" "barracuda_drivable_anims\wheel_fr_low.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_low_corrective_animation" 0
	weightlist "weights_wheel_fr_suspension"
}

$animation "wheel_fr_high" "barracuda_drivable_anims\wheel_fr_high.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_high_corrective_animation" 0
	weightlist "weights_wheel_fr_suspension"
}

$animation "wheel_fr_spin0" "barracuda_drivable_anims\wheel_fr_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin0_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fr_spin120" "barracuda_drivable_anims\wheel_fr_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin120_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fr_spin240" "barracuda_drivable_anims\wheel_fr_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin240_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fl_low" "barracuda_drivable_anims\wheel_fl_low.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_low_corrective_animation" 0
	weightlist "weights_wheel_fl_suspension"
}

$animation "wheel_fl_high" "barracuda_drivable_anims\wheel_fl_high.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_high_corrective_animation" 0
	weightlist "weights_wheel_fl_suspension"
}

$animation "wheel_fl_spin0" "barracuda_drivable_anims\wheel_fl_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin0_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_fl_spin120" "barracuda_drivable_anims\wheel_fl_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin120_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_fl_spin240" "barracuda_drivable_anims\wheel_fl_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin240_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_rr_low" "barracuda_drivable_anims\wheel_rr_low.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_low_corrective_animation" 0
	weightlist "weights_wheel_rr_suspension"
}

$animation "wheel_rr_high" "barracuda_drivable_anims\wheel_rr_high.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_high_corrective_animation" 0
	weightlist "weights_wheel_rr_suspension"
}

$animation "wheel_rr_spin0" "barracuda_drivable_anims\wheel_rr_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin0_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rr_spin120" "barracuda_drivable_anims\wheel_rr_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin120_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rr_spin240" "barracuda_drivable_anims\wheel_rr_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin240_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rl_low" "barracuda_drivable_anims\wheel_rl_low.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_low_corrective_animation" 0
	weightlist "weights_wheel_rl_suspension"
}

$animation "wheel_rl_high" "barracuda_drivable_anims\wheel_rl_high.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_high_corrective_animation" 0
	weightlist "weights_wheel_rl_suspension"
}

$animation "wheel_rl_spin0" "barracuda_drivable_anims\wheel_rl_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin0_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$animation "wheel_rl_spin120" "barracuda_drivable_anims\wheel_rl_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin120_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$animation "wheel_rl_spin240" "barracuda_drivable_anims\wheel_rl_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin240_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$sequence "idle" {
	"barracuda_drivable_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "turn" {
	"barracuda_drivable_anims\turn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "suspension" {
	"barracuda_drivable_anims\suspension.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"barracuda_drivable_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "aim" {
	"barracuda_drivable_anims\aim.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gun_spin" {
	"barracuda_drivable_anims\gun_spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "speedo" {
	"barracuda_drivable_anims\speedo.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "enter1" {
	"barracuda_drivable_anims\enter1.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit1" {
	"barracuda_drivable_anims\exit1.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "enter2" {
	"barracuda_drivable_anims\enter2.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit2" {
	"barracuda_drivable_anims\exit2.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "enter3" {
	"barracuda_drivable_anims\enter3.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit3" {
	"barracuda_drivable_anims\exit3.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "enter4" {
	"barracuda_drivable_anims\enter4.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit4" {
	"barracuda_drivable_anims\exit4.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "exit5" {
	"barracuda_drivable_anims\exit5.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "exit6" {
	"barracuda_drivable_anims\exit6.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "exit7" {
	"barracuda_drivable_anims\exit7.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "exit8" {
	"barracuda_drivable_anims\exit8.smd"
	fadein 0.2
	fadeout 0
	fps 60
}

$sequence "ammo_open" {
	"barracuda_drivable_anims\ammo_open.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ammo_close" {
	"barracuda_drivable_anims\ammo_close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "tau_levitate" {
	"barracuda_drivable_anims\tau_levitate.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "tau_removed" {
	"a_tau_removed"
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "exit_tauremoved" {
	"barracuda_drivable_anims\exit_tauremoved.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "tau_removed"
	fps 30
}

$sequence "aim_all" {
	"down_left"
	"down_center"
	"down_right"
	"mid_left"
	"mid_center"
	"mid_right"
	"up_left"
	"up_center"
	"up_right"
	autoplay
	blend "vehicle_weapon_yaw" -120 120
	blend "vehicle_weapon_pitch" -60 60
	fadein 0.2
	fadeout 0.2
}

$sequence "gun_spinning" {
	"gun_spin0"
	"gun_spin120"
	"gun_spin240"
	"gun_spin0"
	autoplay
	blend "gun_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "speedometer" {
	"slow"
	"mid"
	"fast"
	autoplay
	blend "vehicle_guage" 0 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "turning" {
	"turn_left"
	"turn_right"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "wheel_fr_suspension" {
	"wheel_fr_low"
	"wheel_fr_high"
	autoplay
	blend "vehicle_wheel_fr_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "wheel_fr_spin" {
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

$sequence "wheel_fl_suspension" {
	"wheel_fl_low"
	"wheel_fl_high"
	autoplay
	blend "vehicle_wheel_fl_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "wheel_fl_spin" {
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

$sequence "wheel_rr_suspension" {
	"wheel_rr_low"
	"wheel_rr_high"
	autoplay
	blend "vehicle_wheel_rr_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "wheel_rr_spin" {
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

$sequence "wheel_rl_suspension" {
	"wheel_rl_low"
	"wheel_rl_high"
	autoplay
	blend "vehicle_wheel_rl_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "wheel_rl_spin" {
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

$collisionmodel "barracuda_drivable_physics.smd"
{
	$mass 800
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 12

}

$keyvalues
{
	vehicle_entry 
	{
		"enter1" "1"
		"enter2" "2"
		"enter3" "3"
	}
	vehicle_exit 
	{
		"exit1" "upright"
		"exit2" "upright"
		"exit7" "upsidedown"
		"exit8" "upsidedown"
	}
	vehicle_escape_exit 
	{
		"exit3" "upright"
		"exit4" "upright"
		"exit5" "upsidedown"
		"exit6" "upsidedown"
	}
}
$bolton "Bolton0" "1414743113" ""
$bolton "Bolton1" "-1942984546" ""
