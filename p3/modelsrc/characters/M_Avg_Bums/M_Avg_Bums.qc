// Created by Crowbar 0.74

$modelname "characters/M_Avg_Bums/M_Avg_Bums.mdl"

$upaxis Y

$bodygroup "M_Avg_Bums_Bodies"
{
	studio "m_avg_ss_pants_L0.smd" "#m_avg_ss_pants_L0" {
		mouth 0 "mouth" "bip_head" 0 0 -1
		mouth 1 "mouth" "bip_head" 0 0 -1
		mouth 2 "mouth" "bip_head" 0 0 -1
	}
	studio "m_avg_ss_shorts_01_L0.smd" "#m_avg_ss_shorts_01_L0" {
		mouth 0 "mouth" "bip_head" 0 0 -1
		mouth 1 "mouth" "bip_head" 0 0 -1
		mouth 2 "mouth" "bip_head" 0 0 -1
	}
}
$bodygroup "M_Avg_Bums_Heads"
{
	studio "m_avg_suit_head_01_L0.smd" "#m_avg_suit_head_01_L0" {
		eyeball "eye_0" "bip_head" -1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_r" 1.9 0 "iris_unused" 0.6175
		eyeball "eye_1" "bip_head" 1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_l" 1.9 0 "iris_unused" 0.6175

		flexfile "M_Avg_Bums_01.vta" 
		{
			defaultflex frame 0
			flex "LeyeClose" frame 1
			flex "angryHi" frame 2
			flex "T" frame 3
			flex "V" frame 4
			flex "ReyeClose" frame 5
			flex "M" frame 6
			flex "U" frame 7
			flex "smileHi" frame 8
			flex "angry" frame 9
			flex "smile" frame 10
			flex "mouthOpen" frame 11
		}

		flexcontroller T range 0 1 "T"
		flexcontroller V range 0 1 "V"
		flexcontroller ReyeClose range 0 1 "ReyeClose"
		flexcontroller LeyeClose range 0 1 "LeyeClose"
		flexcontroller M range 0 1 "M"
		flexcontroller U range 0 1 "U"
		flexcontroller smileHi range 0 1 "smileHi"
		flexcontroller angryHi range 0 1 "angryHi"
		flexcontroller angry range 0 1 "angry"
		flexcontroller smile range 0 1 "smile"
		flexcontroller mouthOpen range 0 1 "mouthOpen"
		flexcontroller range range 0 1 "0"
		flexcontroller range range 0 1 "1"
		flexcontroller range range 0 1 "blink"
		flexcontroller eyes range -45 45 "eyes_updown"
		flexcontroller eyes range -45 45 "eyes_rightleft"
		flexcontroller head range -30 30 "head_rightleft"
		flexcontroller head range -15 15 "head_updown"
		flexcontroller head range -15 15 "head_tilt"
		flexcontroller body range -30 30 "body_rightleft"
		flexcontroller chest range -30 30 "chest_rightleft"
		flexcontroller head range -0.2 0.2 "head_forwardback"

		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%T = T
		%V = V
		%M = M
		%U = U
		%smileHi = smileHi
		%angryHi = angryHi
		%angry = angry
		%smile = smile
		%mouthOpen = mouthOpen
	}
	studio "M_Avg_Moustache_Head_01_L0.smd" "#M_Avg_Moustache_Head_01_L0" {
		eyeball "eye_0" "bip_head" -1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_r" 1.9 0 "iris_unused" 0.6175
		eyeball "eye_1" "bip_head" 1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_l" 1.9 0 "iris_unused" 0.6175

		flexfile "M_Avg_Bums_02.vta" 
		{
			defaultflex frame 0
			flex "LeyeClose" frame 1
			flex "angryHi" frame 2
			flex "T" frame 3
			flex "V" frame 4
			flex "ReyeClose" frame 5
			flex "M" frame 6
			flex "U" frame 7
			flex "smileHi" frame 8
			flex "angry" frame 9
			flex "smile" frame 10
			flex "mouthOpen" frame 11
		}

		flexcontroller T range 0 1 "T"
		flexcontroller V range 0 1 "V"
		flexcontroller ReyeClose range 0 1 "ReyeClose"
		flexcontroller LeyeClose range 0 1 "LeyeClose"
		flexcontroller M range 0 1 "M"
		flexcontroller U range 0 1 "U"
		flexcontroller smileHi range 0 1 "smileHi"
		flexcontroller angryHi range 0 1 "angryHi"
		flexcontroller angry range 0 1 "angry"
		flexcontroller smile range 0 1 "smile"
		flexcontroller mouthOpen range 0 1 "mouthOpen"
		flexcontroller range range 0 1 "0"
		flexcontroller range range 0 1 "1"
		flexcontroller range range 0 1 "blink"
		flexcontroller eyes range -45 45 "eyes_updown"
		flexcontroller eyes range -45 45 "eyes_rightleft"
		flexcontroller head range -30 30 "head_rightleft"
		flexcontroller head range -15 15 "head_updown"
		flexcontroller head range -15 15 "head_tilt"
		flexcontroller body range -30 30 "body_rightleft"
		flexcontroller chest range -30 30 "chest_rightleft"
		flexcontroller head range -0.2 0.2 "head_forwardback"

		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%T = T
		%V = V
		%M = M
		%U = U
		%smileHi = smileHi
		%angryHi = angryHi
		%angry = angry
		%smile = smile
		%mouthOpen = mouthOpen
	}
	studio "M_Avg_Beard_Head_02_L0.smd" "#M_Avg_Beard_Head_02_L0" {
		eyeball "eye_0" "bip_head" -1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_r" 1.9 0 "iris_unused" 0.6175
		eyeball "eye_1" "bip_head" 1.472500 65.217503 2.754999 "models\Characters\Eyes\eyeball_l" 1.9 0 "iris_unused" 0.6175

		flexfile "M_Avg_Bums_03.vta" 
		{
			defaultflex frame 0
			flex "LeyeClose" frame 1
			flex "angryHi" frame 2
			flex "T" frame 3
			flex "V" frame 4
			flex "ReyeClose" frame 5
			flex "M" frame 6
			flex "U" frame 7
			flex "smileHi" frame 8
			flex "angry" frame 9
			flex "smile" frame 10
			flex "mouthOpen" frame 11
		}

		flexcontroller T range 0 1 "T"
		flexcontroller V range 0 1 "V"
		flexcontroller ReyeClose range 0 1 "ReyeClose"
		flexcontroller LeyeClose range 0 1 "LeyeClose"
		flexcontroller M range 0 1 "M"
		flexcontroller U range 0 1 "U"
		flexcontroller smileHi range 0 1 "smileHi"
		flexcontroller angryHi range 0 1 "angryHi"
		flexcontroller angry range 0 1 "angry"
		flexcontroller smile range 0 1 "smile"
		flexcontroller mouthOpen range 0 1 "mouthOpen"
		flexcontroller range range 0 1 "0"
		flexcontroller range range 0 1 "1"
		flexcontroller range range 0 1 "blink"
		flexcontroller eyes range -45 45 "eyes_updown"
		flexcontroller eyes range -45 45 "eyes_rightleft"
		flexcontroller head range -30 30 "head_rightleft"
		flexcontroller head range -15 15 "head_updown"
		flexcontroller head range -15 15 "head_tilt"
		flexcontroller body range -30 30 "body_rightleft"
		flexcontroller chest range -30 30 "chest_rightleft"
		flexcontroller head range -0.2 0.2 "head_forwardback"

		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%mouth = 0.2 + mouthOpen + 0.3 * smile + 0.8 * angry + 0.3 * T
		%ReyeClose = ReyeClose + blink
		%LeyeClose = LeyeClose + blink
		%T = T
		%V = V
		%M = M
		%U = U
		%smileHi = smileHi
		%angryHi = angryHi
		%angry = angry
		%smile = smile
		%mouthOpen = mouthOpen
	}
}
$bodygroup "Flesh_Right_Hand"
{
	blank
	studio "flesh_rightdown_hand_01.smd" "#flesh_rightdown_hand_01"
	studio "flesh_rightupper_hand_01.smd" "#flesh_rightupper_hand_01"
}
$bodygroup "Flesh_Left_Hand"
{
	blank
	studio "flesh_leftdown_hand_01.smd" "#flesh_leftdown_hand_01"
	studio "flesh_leftupper_hand_01.smd" "#flesh_leftupper_hand_01"
}
$bodygroup "Flesh_Right_Leg"
{
	blank
	studio "flesh_rightdown_leg_01.smd" "#flesh_rightdown_leg_01"
	studio "flesh_rightupper_leg_01.smd" "#flesh_rightupper_leg_01"
}
$bodygroup "Flesh_Left_Leg"
{
	blank
	studio "flesh_leftdown_leg_01.smd" "#flesh_leftdown_leg_01"
	studio "flesh_leftupper_leg_01.smd" "#flesh_leftupper_leg_01"
}
$bodygroup "Flesh_Head"
{
	blank
	studio "flesh_upper_head.smd" "#flesh_upper_head"
	studio "flesh_down_head.smd" "#flesh_down_head"
}
$bodygroup "Flesh_Torso"
{
	blank
	studio "flesh_upper_torso.smd" "#flesh_upper_torso"
	studio "flesh_down_torso.smd" "#flesh_down_torso"
}
$bodygroup "M_Avg_Hair"
{
	studio "hair_bum_m_01_L0.smd" "#hair_bum_m_01_L0"
	studio "hair_bum_m_02_L0.smd" "#hair_bum_m_02_L0"
	studio "hair_bum_m_03_L0.smd" "#hair_bum_m_03_L0"
}

$lod 10
{
	replacemodel "m_avg_ss_pants_L0.smd" "m_avg_ss_pants_L0_lod1.smd"
	replacemodel "m_avg_ss_shorts_01_L0.smd" "m_avg_ss_shorts_01_L0_lod1.smd"
	replacemodel "m_avg_suit_head_01_L0.smd" "m_avg_suit_head_01_L0_lod1.smd"
	replacemodel "M_Avg_Moustache_Head_01_L0.smd" "M_Avg_Moustache_Head_01_L0_lod1.smd"
	replacemodel "M_Avg_Beard_Head_02_L0.smd" "M_Avg_Beard_Head_02_L0_lod1.smd"
	replacemodel "flesh_rightdown_hand_01.smd" "flesh_rightdown_hand_01_lod1.smd"
	replacemodel "flesh_rightupper_hand_01.smd" "flesh_rightupper_hand_01_lod1.smd"
	replacemodel "flesh_leftdown_hand_01.smd" "flesh_leftdown_hand_01_lod1.smd"
	replacemodel "flesh_leftupper_hand_01.smd" "flesh_leftupper_hand_01_lod1.smd"
	replacemodel "flesh_rightdown_leg_01.smd" "flesh_rightdown_leg_01_lod1.smd"
	replacemodel "flesh_rightupper_leg_01.smd" "flesh_rightupper_leg_01_lod1.smd"
	replacemodel "flesh_leftdown_leg_01.smd" "flesh_leftdown_leg_01_lod1.smd"
	replacemodel "flesh_leftupper_leg_01.smd" "flesh_leftupper_leg_01_lod1.smd"
	replacemodel "flesh_upper_head.smd" "flesh_upper_head_lod1.smd"
	replacemodel "flesh_down_head.smd" "flesh_down_head_lod1.smd"
	replacemodel "flesh_upper_torso.smd" "flesh_upper_torso_lod1.smd"
	replacemodel "flesh_down_torso.smd" "flesh_down_torso_lod1.smd"
	replacemodel "hair_bum_m_01_L0.smd" "hair_bum_m_01_L0_lod1.smd"
	replacemodel "hair_bum_m_02_L0.smd" "hair_bum_m_02_L0_lod1.smd"
	replacemodel "hair_bum_m_03_L0.smd" "hair_bum_m_03_L0_lod1.smd"
	replacebone "bip_toeEnd_R" "bip_foot_R"
	replacebone "bip_toeEnd_L" "bip_foot_L"
	replacebone "bip_indexEnd_L" "bip_index_1_L"
	replacebone "bip_middleEnd_L" "bip_middle_1_L"
	replacebone "bip_RingEnd_L" "bip_ring_1_L"
	replacebone "bip_pinkyEnd_L" "bip_pinky_1_L"
	replacebone "bip_thumbEnd_L" "bip_thumb_1_L"
	replacebone "Wp_L" "bip_hand_L"
	replacebone "bip_indexEnd_R" "bip_index_1_R"
	replacebone "bip_middleEnd_R" "bip_middle_1_R"
	replacebone "bip_ringEnd_R" "bip_ring_1_R"
	replacebone "bip_pinkyEnd_R" "bip_pinky_1_R"
	replacebone "bip_thumbEnd_R" "bip_thumb_1_R"
	replacebone "Wp_R" "bip_hand_R"
	replacebone "bip_forward" "bip_head"
	replacebone "bip_clipbone" "bip_hand_R"
	nofacial
}
$lod 15
{
	replacemodel "m_avg_ss_pants_L0.smd" "m_avg_ss_pants_L0_lod2.smd"
	replacemodel "m_avg_ss_shorts_01_L0.smd" "m_avg_ss_shorts_01_L0_lod2.smd"
	replacemodel "m_avg_suit_head_01_L0.smd" "m_avg_suit_head_01_L0_lod2.smd"
	replacemodel "M_Avg_Moustache_Head_01_L0.smd" "M_Avg_Moustache_Head_01_L0_lod2.smd"
	replacemodel "M_Avg_Beard_Head_02_L0.smd" "M_Avg_Beard_Head_02_L0_lod2.smd"
	replacemodel "flesh_rightdown_hand_01.smd" "flesh_rightdown_hand_01_lod2.smd"
	replacemodel "flesh_rightupper_hand_01.smd" "flesh_rightupper_hand_01_lod2.smd"
	replacemodel "flesh_leftdown_hand_01.smd" "flesh_leftdown_hand_01_lod2.smd"
	replacemodel "flesh_leftupper_hand_01.smd" "flesh_leftupper_hand_01_lod2.smd"
	replacemodel "flesh_rightdown_leg_01.smd" "flesh_rightdown_leg_01_lod2.smd"
	replacemodel "flesh_rightupper_leg_01.smd" "flesh_rightupper_leg_01_lod2.smd"
	replacemodel "flesh_leftdown_leg_01.smd" "flesh_leftdown_leg_01_lod2.smd"
	replacemodel "flesh_leftupper_leg_01.smd" "flesh_leftupper_leg_01_lod2.smd"
	replacemodel "flesh_upper_head.smd" "flesh_upper_head_lod2.smd"
	replacemodel "flesh_down_head.smd" "flesh_down_head_lod2.smd"
	replacemodel "flesh_upper_torso.smd" "flesh_upper_torso_lod2.smd"
	replacemodel "flesh_down_torso.smd" "flesh_down_torso_lod2.smd"
	replacemodel "hair_bum_m_01_L0.smd" "hair_bum_m_01_L0_lod2.smd"
	replacemodel "hair_bum_m_02_L0.smd" "hair_bum_m_02_L0_lod2.smd"
	replacemodel "hair_bum_m_03_L0.smd" "hair_bum_m_03_L0_lod2.smd"
	replacebone "bip_toeEnd_R" "bip_foot_R"
	replacebone "bip_toeEnd_L" "bip_foot_L"
	replacebone "bip_indexEnd_L" "bip_index_1_L"
	replacebone "bip_middleEnd_L" "bip_middle_1_L"
	replacebone "bip_RingEnd_L" "bip_ring_1_L"
	replacebone "bip_pinkyEnd_L" "bip_pinky_1_L"
	replacebone "bip_thumbEnd_L" "bip_thumb_1_L"
	replacebone "Wp_L" "bip_hand_L"
	replacebone "bip_indexEnd_R" "bip_index_1_R"
	replacebone "bip_middleEnd_R" "bip_middle_1_R"
	replacebone "bip_ringEnd_R" "bip_ring_1_R"
	replacebone "bip_pinkyEnd_R" "bip_pinky_1_R"
	replacebone "bip_thumbEnd_R" "bip_thumb_1_R"
	replacebone "Wp_R" "bip_hand_R"
	replacebone "bip_forward" "bip_head"
	replacebone "bip_clipbone" "bip_hand_R"
	nofacial
}
$lod 20
{
	replacemodel "m_avg_ss_pants_L0.smd" "m_avg_ss_pants_L0_lod3.smd"
	replacemodel "m_avg_ss_shorts_01_L0.smd" "m_avg_ss_shorts_01_L0_lod3.smd"
	replacemodel "m_avg_suit_head_01_L0.smd" "m_avg_suit_head_01_L0_lod3.smd"
	replacemodel "M_Avg_Moustache_Head_01_L0.smd" "M_Avg_Moustache_Head_01_L0_lod3.smd"
	replacemodel "M_Avg_Beard_Head_02_L0.smd" "M_Avg_Beard_Head_02_L0_lod3.smd"
	replacemodel "flesh_rightdown_hand_01.smd" "flesh_rightdown_hand_01_lod3.smd"
	replacemodel "flesh_rightupper_hand_01.smd" "flesh_rightupper_hand_01_lod3.smd"
	replacemodel "flesh_leftdown_hand_01.smd" "flesh_leftdown_hand_01_lod3.smd"
	replacemodel "flesh_leftupper_hand_01.smd" "flesh_leftupper_hand_01_lod3.smd"
	replacemodel "flesh_rightdown_leg_01.smd" "flesh_rightdown_leg_01_lod3.smd"
	replacemodel "flesh_rightupper_leg_01.smd" "flesh_rightupper_leg_01_lod3.smd"
	replacemodel "flesh_leftdown_leg_01.smd" "flesh_leftdown_leg_01_lod3.smd"
	replacemodel "flesh_leftupper_leg_01.smd" "flesh_leftupper_leg_01_lod3.smd"
	replacemodel "flesh_upper_head.smd" "flesh_upper_head_lod3.smd"
	replacemodel "flesh_down_head.smd" "flesh_down_head_lod3.smd"
	replacemodel "flesh_upper_torso.smd" "flesh_upper_torso_lod3.smd"
	replacemodel "flesh_down_torso.smd" "flesh_down_torso_lod3.smd"
	replacemodel "hair_bum_m_01_L0.smd" "hair_bum_m_01_L0_lod3.smd"
	replacemodel "hair_bum_m_02_L0.smd" "hair_bum_m_02_L0_lod3.smd"
	replacemodel "hair_bum_m_03_L0.smd" "hair_bum_m_03_L0_lod3.smd"
	replacebone "bip_foot_R" "bip_knee_R"
	replacebone "bip_Hand_Rotate1_R" "bip_lowerArm_R"
	replacebone "bip_foot_L" "bip_knee_L"
	replacebone "bip_index_0_L" "bip_hand_L"
	replacebone "bip_index_0_R" "bip_hand_R"
	replacebone "bip_Hand_Rotate1_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate1_L" "bip_upperArm_L"
	replacebone "bip_index_1_L" "bip_index_0_L"
	replacebone "bip_middle_0_L" "bip_hand_L"
	replacebone "bip_middle_1_L" "bip_middle_0_L"
	replacebone "bip_ring_0_L" "bip_hand_L"
	replacebone "bip_ring_1_L" "bip_ring_0_L"
	replacebone "bip_pinky_0_L" "bip_hand_L"
	replacebone "bip_pinky_1_L" "bip_pinky_0_L"
	replacebone "bip_thumb_0_L" "bip_hand_L"
	replacebone "bip_thumb_1_L" "bip_thumb_0_L"
	replacebone "bip_Hand_Rotate_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate_L" "bip_upperArm_L"
	replacebone "bip_Pelvis_L" "bip_hip_L"
	replacebone "bip_Arm_Rotate_R" "bip_upperArm_R"
	replacebone "bip_Arm_Rotate1_R" "bip_upperArm_R"
	replacebone "bip_kneeMid_L" "bip_knee_L"
	replacebone "Elbow_R" "bip_lowerArm_R"
	replacebone "bip_Pelvis_R" "bip_hip_R"
	replacebone "bip_kneeMid_R" "bip_knee_R"
	replacebone "Elbow_L" "bip_lowerArm_L"
	replacebone "bip_index_1_R" "bip_index_0_R"
	replacebone "bip_middle_0_R" "bip_hand_R"
	replacebone "bip_middle_1_R" "bip_middle_0_R"
	replacebone "bip_ring_0_R" "bip_hand_R"
	replacebone "bip_ring_1_R" "bip_ring_0_R"
	replacebone "bip_pinky_0_R" "bip_hand_R"
	replacebone "bip_pinky_1_R" "bip_pinky_0_R"
	replacebone "bip_thumb_0_R" "bip_hand_R"
	replacebone "bip_thumb_1_R" "bip_thumb_0_R"
	replacebone "bip_Hand_Rotate_R" "bip_lowerArm_R"
	replacebone "bip_toeEnd_R" "bip_foot_R"
	replacebone "bip_toeEnd_L" "bip_foot_L"
	replacebone "bip_indexEnd_L" "bip_index_1_L"
	replacebone "bip_middleEnd_L" "bip_middle_1_L"
	replacebone "bip_RingEnd_L" "bip_ring_1_L"
	replacebone "bip_pinkyEnd_L" "bip_pinky_1_L"
	replacebone "bip_thumbEnd_L" "bip_thumb_1_L"
	replacebone "Wp_L" "bip_hand_L"
	replacebone "bip_indexEnd_R" "bip_index_1_R"
	replacebone "bip_middleEnd_R" "bip_middle_1_R"
	replacebone "bip_ringEnd_R" "bip_ring_1_R"
	replacebone "bip_pinkyEnd_R" "bip_pinky_1_R"
	replacebone "bip_thumbEnd_R" "bip_thumb_1_R"
	replacebone "Wp_R" "bip_hand_R"
	replacebone "bip_forward" "bip_head"
	replacebone "bip_clipbone" "bip_hand_R"
	nofacial
}
$lod 25
{
	replacemodel "m_avg_ss_pants_L0.smd" "m_avg_ss_pants_L0_lod4.smd"
	replacemodel "m_avg_ss_shorts_01_L0.smd" "m_avg_ss_shorts_01_L0_lod4.smd"
	replacemodel "m_avg_suit_head_01_L0.smd" "m_avg_suit_head_01_L0_lod4.smd"
	replacemodel "M_Avg_Moustache_Head_01_L0.smd" "M_Avg_Moustache_Head_01_L0_lod4.smd"
	replacemodel "M_Avg_Beard_Head_02_L0.smd" "M_Avg_Beard_Head_02_L0_lod4.smd"
	replacemodel "flesh_rightdown_hand_01.smd" "flesh_rightdown_hand_01_lod4.smd"
	replacemodel "flesh_rightupper_hand_01.smd" "flesh_rightupper_hand_01_lod4.smd"
	replacemodel "flesh_leftdown_hand_01.smd" "flesh_leftdown_hand_01_lod4.smd"
	replacemodel "flesh_leftupper_hand_01.smd" "flesh_leftupper_hand_01_lod4.smd"
	replacemodel "flesh_rightdown_leg_01.smd" "flesh_rightdown_leg_01_lod4.smd"
	replacemodel "flesh_rightupper_leg_01.smd" "flesh_rightupper_leg_01_lod4.smd"
	replacemodel "flesh_leftdown_leg_01.smd" "flesh_leftdown_leg_01_lod4.smd"
	replacemodel "flesh_leftupper_leg_01.smd" "flesh_leftupper_leg_01_lod4.smd"
	replacemodel "flesh_upper_head.smd" "flesh_upper_head_lod4.smd"
	replacemodel "flesh_down_head.smd" "flesh_down_head_lod4.smd"
	replacemodel "flesh_upper_torso.smd" "flesh_upper_torso_lod4.smd"
	replacemodel "flesh_down_torso.smd" "flesh_down_torso_lod4.smd"
	replacemodel "hair_bum_m_01_L0.smd" "hair_bum_m_01_L0_lod4.smd"
	replacemodel "hair_bum_m_02_L0.smd" "hair_bum_m_02_L0_lod4.smd"
	replacemodel "hair_bum_m_03_L0.smd" "hair_bum_m_03_L0_lod4.smd"
	replacebone "bip_foot_R" "bip_knee_R"
	replacebone "bip_Hand_Rotate1_R" "bip_lowerArm_R"
	replacebone "bip_foot_L" "bip_knee_L"
	replacebone "bip_index_0_L" "bip_hand_L"
	replacebone "bip_index_0_R" "bip_hand_R"
	replacebone "bip_Hand_Rotate1_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate1_L" "bip_upperArm_L"
	replacebone "bip_index_1_L" "bip_index_0_L"
	replacebone "bip_middle_0_L" "bip_hand_L"
	replacebone "bip_middle_1_L" "bip_middle_0_L"
	replacebone "bip_ring_0_L" "bip_hand_L"
	replacebone "bip_ring_1_L" "bip_ring_0_L"
	replacebone "bip_pinky_0_L" "bip_hand_L"
	replacebone "bip_pinky_1_L" "bip_pinky_0_L"
	replacebone "bip_thumb_0_L" "bip_hand_L"
	replacebone "bip_thumb_1_L" "bip_thumb_0_L"
	replacebone "bip_Hand_Rotate_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate_L" "bip_upperArm_L"
	replacebone "bip_Pelvis_L" "bip_hip_L"
	replacebone "bip_Arm_Rotate_R" "bip_upperArm_R"
	replacebone "bip_Arm_Rotate1_R" "bip_upperArm_R"
	replacebone "bip_kneeMid_L" "bip_knee_L"
	replacebone "Elbow_R" "bip_lowerArm_R"
	replacebone "bip_Pelvis_R" "bip_hip_R"
	replacebone "bip_kneeMid_R" "bip_knee_R"
	replacebone "Elbow_L" "bip_lowerArm_L"
	replacebone "bip_index_1_R" "bip_index_0_R"
	replacebone "bip_middle_0_R" "bip_hand_R"
	replacebone "bip_middle_1_R" "bip_middle_0_R"
	replacebone "bip_ring_0_R" "bip_hand_R"
	replacebone "bip_ring_1_R" "bip_ring_0_R"
	replacebone "bip_pinky_0_R" "bip_hand_R"
	replacebone "bip_pinky_1_R" "bip_pinky_0_R"
	replacebone "bip_thumb_0_R" "bip_hand_R"
	replacebone "bip_thumb_1_R" "bip_thumb_0_R"
	replacebone "bip_Hand_Rotate_R" "bip_lowerArm_R"
	replacebone "bip_toeEnd_R" "bip_foot_R"
	replacebone "bip_toeEnd_L" "bip_foot_L"
	replacebone "bip_indexEnd_L" "bip_index_1_L"
	replacebone "bip_middleEnd_L" "bip_middle_1_L"
	replacebone "bip_RingEnd_L" "bip_ring_1_L"
	replacebone "bip_pinkyEnd_L" "bip_pinky_1_L"
	replacebone "bip_thumbEnd_L" "bip_thumb_1_L"
	replacebone "Wp_L" "bip_hand_L"
	replacebone "bip_indexEnd_R" "bip_index_1_R"
	replacebone "bip_middleEnd_R" "bip_middle_1_R"
	replacebone "bip_ringEnd_R" "bip_ring_1_R"
	replacebone "bip_pinkyEnd_R" "bip_pinky_1_R"
	replacebone "bip_thumbEnd_R" "bip_thumb_1_R"
	replacebone "Wp_R" "bip_hand_R"
	replacebone "bip_forward" "bip_head"
	replacebone "bip_clipbone" "bip_hand_R"
	nofacial
}
$shadowlod
{
	replacemodel "m_avg_ss_pants_L0.smd" "m_avg_ss_pants_L0_lod5.smd"
	replacemodel "m_avg_ss_shorts_01_L0.smd" "m_avg_ss_shorts_01_L0_lod5.smd"
	replacemodel "m_avg_suit_head_01_L0.smd" "m_avg_suit_head_01_L0_lod5.smd"
	replacemodel "M_Avg_Moustache_Head_01_L0.smd" "M_Avg_Moustache_Head_01_L0_lod5.smd"
	replacemodel "M_Avg_Beard_Head_02_L0.smd" "M_Avg_Beard_Head_02_L0_lod5.smd"
	replacemodel "flesh_rightdown_hand_01.smd" "flesh_rightdown_hand_01_lod5.smd"
	replacemodel "flesh_rightupper_hand_01.smd" "flesh_rightupper_hand_01_lod5.smd"
	replacemodel "flesh_leftdown_hand_01.smd" "flesh_leftdown_hand_01_lod5.smd"
	replacemodel "flesh_leftupper_hand_01.smd" "flesh_leftupper_hand_01_lod5.smd"
	replacemodel "flesh_rightdown_leg_01.smd" "flesh_rightdown_leg_01_lod5.smd"
	replacemodel "flesh_rightupper_leg_01.smd" "flesh_rightupper_leg_01_lod5.smd"
	replacemodel "flesh_leftdown_leg_01.smd" "flesh_leftdown_leg_01_lod5.smd"
	replacemodel "flesh_leftupper_leg_01.smd" "flesh_leftupper_leg_01_lod5.smd"
	replacemodel "flesh_upper_head.smd" "flesh_upper_head_lod5.smd"
	replacemodel "flesh_down_head.smd" "flesh_down_head_lod5.smd"
	replacemodel "flesh_upper_torso.smd" "flesh_upper_torso_lod5.smd"
	replacemodel "flesh_down_torso.smd" "flesh_down_torso_lod5.smd"
	replacemodel "hair_bum_m_01_L0.smd" "hair_bum_m_01_L0_lod5.smd"
	replacemodel "hair_bum_m_02_L0.smd" "hair_bum_m_02_L0_lod5.smd"
	replacemodel "hair_bum_m_03_L0.smd" "hair_bum_m_03_L0_lod5.smd"
	replacebone "bip_foot_R" "bip_knee_R"
	replacebone "bip_Hand_Rotate1_R" "bip_lowerArm_R"
	replacebone "bip_foot_L" "bip_knee_L"
	replacebone "bip_index_0_L" "bip_hand_L"
	replacebone "bip_index_0_R" "bip_hand_R"
	replacebone "bip_Hand_Rotate1_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate1_L" "bip_upperArm_L"
	replacebone "bip_index_1_L" "bip_index_0_L"
	replacebone "bip_middle_0_L" "bip_hand_L"
	replacebone "bip_middle_1_L" "bip_middle_0_L"
	replacebone "bip_ring_0_L" "bip_hand_L"
	replacebone "bip_ring_1_L" "bip_ring_0_L"
	replacebone "bip_pinky_0_L" "bip_hand_L"
	replacebone "bip_pinky_1_L" "bip_pinky_0_L"
	replacebone "bip_thumb_0_L" "bip_hand_L"
	replacebone "bip_thumb_1_L" "bip_thumb_0_L"
	replacebone "bip_Hand_Rotate_L" "bip_lowerArm_L"
	replacebone "bip_Arm_Rotate_L" "bip_upperArm_L"
	replacebone "bip_Pelvis_L" "bip_hip_L"
	replacebone "bip_Arm_Rotate_R" "bip_upperArm_R"
	replacebone "bip_Arm_Rotate1_R" "bip_upperArm_R"
	replacebone "bip_kneeMid_L" "bip_knee_L"
	replacebone "Elbow_R" "bip_lowerArm_R"
	replacebone "bip_Pelvis_R" "bip_hip_R"
	replacebone "bip_kneeMid_R" "bip_knee_R"
	replacebone "Elbow_L" "bip_lowerArm_L"
	replacebone "bip_index_1_R" "bip_index_0_R"
	replacebone "bip_middle_0_R" "bip_hand_R"
	replacebone "bip_middle_1_R" "bip_middle_0_R"
	replacebone "bip_ring_0_R" "bip_hand_R"
	replacebone "bip_ring_1_R" "bip_ring_0_R"
	replacebone "bip_pinky_0_R" "bip_hand_R"
	replacebone "bip_pinky_1_R" "bip_pinky_0_R"
	replacebone "bip_thumb_0_R" "bip_hand_R"
	replacebone "bip_thumb_1_R" "bip_thumb_0_R"
	replacebone "bip_Hand_Rotate_R" "bip_lowerArm_R"
	replacebone "bip_toeEnd_R" "bip_foot_R"
	replacebone "bip_toeEnd_L" "bip_foot_L"
	replacebone "bip_indexEnd_L" "bip_index_1_L"
	replacebone "bip_middleEnd_L" "bip_middle_1_L"
	replacebone "bip_RingEnd_L" "bip_ring_1_L"
	replacebone "bip_pinkyEnd_L" "bip_pinky_1_L"
	replacebone "bip_thumbEnd_L" "bip_thumb_1_L"
	replacebone "Wp_L" "bip_hand_L"
	replacebone "bip_indexEnd_R" "bip_index_1_R"
	replacebone "bip_middleEnd_R" "bip_middle_1_R"
	replacebone "bip_ringEnd_R" "bip_ring_1_R"
	replacebone "bip_pinkyEnd_R" "bip_pinky_1_R"
	replacebone "bip_thumbEnd_R" "bip_thumb_1_R"
	replacebone "Wp_R" "bip_hand_R"
	replacebone "bip_forward" "bip_head"
	replacebone "bip_clipbone" "bip_hand_R"
	nofacial
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0.009 -0.956 34.873

$eyeposition 0 1.283 64.6

$opaque

$cdmaterials "models\characters\M_Avg\"
$cdmaterials "models\characters\eyes\"
$cdmaterials "models\Characters\Bolt-on\Dress\"
$cdmaterials "models\Characters\Bolt-on\Hairs\"
$cdmaterials "models\Characters\Bolt-on\Hats\"
$cdmaterials "models\characters\M_Avg_Bums\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "#Skin0" "template_skin"       "template_body"        "models\Characters\Eyes\template_head" "template_hair" "template_cap"  }
	{ "#Skin1" "m_avg_skin_w_01"     "m_avg_ss_pants_12"    "M_Avg_Beard_Head_02"                  "template_skin" "template_skin" }
	{ "#Skin2" "m_avg_skin_m_01"     "m_avg_ss_shorts_01_3" "M_Avg_Suit_Head_W_01_1"               "template_skin" "template_skin" }
	{ "#Skin3" "m_avg_skin_w_01"     "m_avg_ss_shorts_01_4" "M_Avg_Moustache_Head_03_1"            "template_skin" "template_skin" }
	{ "#Skin4" "m_avg_skin_w_01"     "m_avg_ss_pants_07"    "M_Avg_Beard_Head_02"                  "template_skin" "template_skin" }
	{ "#Skin5" "m_avg_skin_w_01"     "m_avg_ss_pants_07_supe"    "M_Avg_Beard_Head_02"                  "template_skin" "template_skin" }
	{ "#Skin6" "m_avg_skin_m_01"     "m_avg_ss_shorts_01_3_midget" "M_Avg_Suit_Head_W_01_1"               "template_skin" "template_skin" }
}

$attachment "forward" "bip_forward" 0 0 0 rotate 0 0 0
$attachment "test_att" "bip_clipbone" 95 0 0 rotate 0 0 0
$attachment "Dick" "bip_pelvis" 0 -6.17 9.02 rotate 0 0 0
$attachment "DickEnd" "bip_pelvis" 0 -6.17 17.1 rotate 0 0 0
$attachment "hand_right" "bip_hand_R" -3.32 -0.95 0.48 rotate 0 -180 0
$attachment "hand_left" "bip_hand_L" 3.15 0.9 -0.45 rotate 0 0 0
$attachment "hold_bottle" "bip_hand_R" -3.8 -1.9 -5.7 rotate 0 0 90
$attachment "hold_bone" "bip_hand_R" -3.43 -0.77 2.48 rotate -90 -90 0
$attachment "hold_plate" "bip_hand_R" -5.7 -2.85 1.9 rotate 0 -140 0
$attachment "hold_phone" "bip_hand_L" 1.9 2.38 3.8 rotate 0 140 -90
$attachment "pelvis" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "neck" "bip_neck" 0 0 0 rotate 0 0 0
$attachment "chest" "bip_spine_1" 0 0 0 rotate 0 0 0
$attachment "mouth" "bip_head" 0.12 -0.95 4.75 rotate 0 0 0
$attachment "monkey" "bip_head" 0 7.6 0 rotate 0 0 0
$attachment "fucking_monkey" "bip_head" 0 0 0 rotate 77 -100 -177
$attachment "snatch0" "bip_knee_L" 0 0 0 rotate 0 -180 0
$attachment "snatch1" "bip_knee_R" 0 0 0 rotate 0 -180 0
$attachment "snatch2" "bip_lowerArm_L" 0 0 0 rotate 0 -180 0
$attachment "snatch3" "bip_lowerArm_R" 0 0 0 rotate 0 -180 0
$attachment "RagdollPosition" "bip_hand_R" -3.8 -1.9 0 rotate -90 0 0
$attachment "ItemSlotS" "bip_index_0_L" 0 0 0 rotate 0 0 0
$attachment "ItemSlotP" "bip_hand_R" -3.32 -0.95 0.48 rotate 0 -180 0
$attachment "spc_nailbat_00" "bip_head" 2.57 3.9 4.47 rotate -59 99 154
$attachment "spc_nailbat_01" "bip_head" 0.66 2.95 -4.75 rotate -59 -71 -40
$attachment "spc_nailbat_02" "bip_spine_3" 2.94 3.23 -3.51 rotate 46 18 -27
$attachment "spc_nailbat_03" "bip_spine_3" -3.23 -0.19 -5.7 rotate -40 -20 -50
$attachment "spc_nailbat_04" "bip_spine_0" 0.09 1.04 5.51 rotate -68 -90 -160
$attachment "spc_nailbat_05" "bip_spine_0" -0.66 3.61 -6.93 rotate -70 -90 -20
$attachment "spc_nailbat_06" "bip_spine_0" 6.74 1.04 -0.28 rotate 50 90 160
$attachment "spc_nailbat_07" "bip_spine_0" -7.7 1.04 -0.28 rotate 0 -40 20

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "p3_M_Avg"
$hbox 3 "bip_pelvis" -7.0775 -8.74 -3.9995 7.1725 1.558 5.5005
$hbox 7 "bip_hip_R" 0 -2.7455 -4.484 16.6535 3.4295 3.591
$hbox 7 "bip_knee_R" -0.418 -2.4035 -3.8 19.8265 2.8215 1.9
$hbox 7 "bip_foot_R" -2.09 -3.781 -3.667 2.66 0.969 8.683001
$hbox 3 "bip_spine_0" -6.2415 -2.85 -5.187 6.1085 4.75 5.263
$hbox 2 "bip_spine_2" -6.536 -4.275 -5.225 6.593 6.175 3.325
$hbox 5 "bip_lowerArm_R" -1.4535 -1.805 -1.463 9.69 1.995 1.387
$hbox 6 "bip_hip_L" 0 -3.648 -4.2465 16.605999 3.002 3.3535
$hbox 6 "bip_knee_L" -1.5865 -2.375 -3.325 18.686501 2.375 1.425
$hbox 6 "bip_foot_L" -2.717 0.475 -8.208 2.033 5.225 3.192
$hbox 4 "bip_lowerArm_L" -1.4345 -1.3775 -1.881 9.69 1.4725 1.919
$hbox 4 "bip_hand_L" 0.475 -0.1425 -2.1565 7.125 1.7575 1.6435
$hbox 1 "bip_head" -3.876 -3.116 -3.23 3.743 6.7545 5.3485
$hbox 5 "bip_hand_R" -5.7 -0.893 -1.216 0 1.0165 1.634
$hbox 4 "bip_Arm_Rotate_L" -4.807 -1.9 -1.615 5.947 1.9 2.185
$hbox 5 "bip_Arm_Rotate_R" -5.9565 -1.9 -2.1755 4.7975 1.9 1.634
$skipboneinbbox

$definebone "bip_pelvis" "" 0 39.56319 0 0 0 0 0 0 0 0 0 0
$definebone "bip_hip_R" "bip_pelvis" -3.366135 -1.935646 1.480067 2.246898 -97.441084 6.373919 0 0 0 0 0 0
$definebone "bip_knee_R" "bip_hip_R" 16.04545 0 0 7.664722 -0.138684 -0.018497 0 0 0 0 0 0
$definebone "bip_foot_R" "bip_knee_R" 17.465778 0.000001 0.000001 -10.229041 99.512434 -9.132358 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 4.24054 1.190873 0 0 0 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 5.143673 -0.566893 0 0 0 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 4.011826 -0.43547 0 0 0 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 3.724953 -0.6555 0 0 0 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -2.166257 -0.155743 -0.180534 0 9.00002 0 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -4.301173 0.28051 -0.232197 -1.138009 -134.759031 86.752022 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 11.236193 0 0.000004 -0.080846 25.407184 0.00007 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 9.693705 0 0 -8.989209 177.11104 100.170216 0 0 0 0 0 0
$definebone "bip_Hand_Rotate1_R" "bip_lowerArm_R" 7.480289 0.006109 -0.010555 -0.080852 -179.953218 99.711111 0 0 0 0 0 0
$definebone "bip_hip_L" "bip_pelvis" 3.366135 -1.935787 1.480067 2.247322 -82.558969 -6.373521 0 0 0 0 0 0
$definebone "bip_knee_L" "bip_hip_L" 16.045298 0.000001 0 7.664738 0.138705 0.018498 0 0 0 0 0 0
$definebone "bip_foot_L" "bip_knee_L" 17.465788 0 0 10.229368 80.487427 170.867127 0 0 0 0 0 0
$definebone "bip_neck" "bip_spine_3" 0 3.134243 -0.066059 0 0 0 0 0 0 0 0 0
$definebone "bip_head" "bip_neck" 0.063361 3.268921 0.898785 0 0 0 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 2.166257 -0.155926 -0.180536 0 -9.00002 179.999978 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 4.301145 -0.280594 0.232197 1.137837 45.240687 3.24827 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 11.236181 -0.000027 -0.000006 25.453986 -0.000002 0 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 9.693651 -0.013687 0.007915 -2.89969 8.919974 9.711002 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 3.443607 -0.31118 -1.426107 10.351333 2.251035 1.47559 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -3.443645 0.311172 1.426091 10.351341 2.251037 1.4756 0 0 0 0 0 0
$definebone "bip_Hand_Rotate1_L" "bip_lowerArm_L" 7.480257 -0.000008 -0.00001 -0.000009 -0.000003 9.711002 0 0 0 0 0 0
$definebone "bip_Arm_Rotate1_L" "bip_upperArm_L" 6.472908 -0.000031 -0.000001 0 0 -1.624107 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 1.726654 -0.000004 0.000009 -0.000005 29.1043 -0.000014 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 3.628399 -0.413433 -0.461199 2.046713 7.432522 -1.030871 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 1.717384 -0.000019 -0.000012 -0.000007 17.006935 -0.000007 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" 3.622608 -0.257954 0.410928 -6.719541 12.289374 -9.923923 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 1.717384 0.000017 0.00001 -0.000005 14.570137 -0.000005 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" 3.401308 0.004623 1.218914 -15.616198 7.729541 -9.534712 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 1.46282 -0.000019 -0.000014 0.000001 27.29021 -0.000003 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" 1.013556 0.13488 -1.638489 29.70757 32.831336 -11.174922 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 1.567802 0.078053 0.000011 17.343993 0.000004 -0.000005 0 0 0 0 0 0
$definebone "bip_Hand_Rotate_L" "bip_lowerArm_L" 4.488096 -0.000061 -0.000023 -0.000009 -0.000003 4.85547 0 0 0 0 0 0
$definebone "bip_Arm_Rotate_L" "bip_upperArm_L" 3.480602 -0.000145 -0.000002 0 0 -2.498669 0 0 0 0 0 0
$definebone "bip_Pelvis_L" "bip_hip_L" 2.222412 0.000015 -0.267579 -6.359574 89.660412 -176.936966 0 0 0 0 0 0
$definebone "bip_Arm_Rotate_R" "bip_upperArm_R" 3.480843 0 0.000004 -0.000007 180.000005 87.50156 0 0 0 0 0 0
$definebone "bip_Arm_Rotate1_R" "bip_upperArm_R" 6.472961 0 0 -0.000007 180.000005 88.376009 0 0 0 0 0 0
$definebone "bip_kneeMid_L" "bip_knee_L" 0 0 0 10.70622 86.697196 174.582681 0 0 0 0 0 0
$definebone "Elbow_R" "bip_lowerArm_R" 0.000002 -0.000001 0 -0.078868 167.319786 90.017816 0 0 0 0 0 0
$definebone "bip_Pelvis_R" "bip_hip_R" 2.222565 0.000001 -0.267583 6.359975 90.339627 3.063025 0 0 0 0 0 0
$definebone "bip_kneeMid_R" "bip_knee_R" 0 0 0 -10.706225 93.302809 -5.417315 0 0 0 0 0 0
$definebone "Elbow_L" "bip_lowerArm_L" 0 0 -0.000001 -12.727004 -0.000004 -0.000002 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -1.726627 0 0 0 29.10429 0.000003 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -3.62842 0.413422 0.46119 2.046719 7.432523 -1.030863 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -1.717388 0 0.000001 -0.000001 17.006929 0.000005 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" -3.622635 0.257938 -0.410944 -6.719533 12.28937 -9.923912 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -1.71739 -0.000002 0 0 14.570139 0.000002 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" -3.401335 -0.004631 -1.218926 -15.616194 7.729545 -9.534702 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -1.462816 -0.000004 0 0 27.290193 -0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" -1.013588 -0.134895 1.638474 29.707573 32.831323 -11.17491 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -1.567801 -0.078051 0 17.343998 -0.000009 -0.000001 0 0 0 0 0 0
$definebone "bip_Hand_Rotate_R" "bip_lowerArm_R" 4.488173 0.003667 -0.006332 -0.080852 -179.953218 94.855529 0 0 0 0 0 0
$definebone "bip_toeEnd_R" "bip_foot_R" -0.035184 -3.529829 6.68356 0 0.000001 -0.000002 0 0 0 0 0 0
$definebone "bip_toeEnd_L" "bip_foot_L" 0.035217 3.529826 -6.683582 0.000002 -0.000002 0 0 0 0 0 0 0
$definebone "bip_indexEnd_L" "bip_index_1_L" 1.878918 0.000004 -0.000005 -0.000006 -0.000003 -19.356416 0 0 0 0 0 0
$definebone "bip_middleEnd_L" "bip_middle_1_L" 1.878918 0.000006 -0.000004 -0.000007 -0.000002 -19.356409 0 0 0 0 0 0
$definebone "bip_RingEnd_L" "bip_ring_1_L" 1.87892 -0.000013 -0.000011 -0.000004 -0.000006 -19.356411 0 0 0 0 0 0
$definebone "bip_pinkyEnd_L" "bip_pinky_1_L" 1.878929 0.000004 0.000001 0.000001 -0.000003 -19.356408 0 0 0 0 0 0
$definebone "bip_thumbEnd_L" "bip_thumb_1_L" 1.490896 0.144535 -0.26849 -0.000004 0.000003 -19.356404 0 0 0 0 0 0
$definebone "Wp_L" "bip_hand_L" 3.058685 1.032097 -0.605999 19.18617 2.841587 -0.000007 0 0 0 0 0 0
$definebone "bip_indexEnd_R" "bip_index_1_R" -1.878929 0.000002 0.000002 -0.000002 -0.000016 -19.356399 0 0 0 0 0 0
$definebone "bip_middleEnd_R" "bip_middle_1_R" -1.878931 0.000002 0.000001 -0.000002 -0.000007 -19.356398 0 0 0 0 0 0
$definebone "bip_ringEnd_R" "bip_ring_1_R" -1.878933 0.000002 0 -0.000001 -0.000006 -19.356401 0 0 0 0 0 0
$definebone "bip_pinkyEnd_R" "bip_pinky_1_R" -1.878937 0.000004 0 0 -0.000016 -19.356409 0 0 0 0 0 0
$definebone "bip_thumbEnd_R" "bip_thumb_1_R" -1.490896 -0.144542 0.268478 -0.000004 -0.000009 -19.356408 0 0 0 0 0 0
$definebone "Wp_R" "bip_hand_R" -3.058714 -1.032104 0.605986 19.186172 2.841584 0.000005 0 0 0 0 0 0
$definebone "bip_forward" "bip_head" 0 0 4.75 -90.000003 -90.000003 0 0 0 0 0 0 0
$definebone "bip_clipbone" "bip_hand_R" -2.849998 0 0 -0.000001 0 0.000003 0 0 0 0 0 0

$bonemerge "bip_pelvis"
$bonemerge "bip_spine_0"
$bonemerge "bip_spine_1"
$bonemerge "bip_spine_2"
$bonemerge "bip_spine_3"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"


$ikchain "rhand" "bip_hand_R" knee 0 0 0
$ikchain "lhand" "bip_hand_L" knee 0 0 0
$ikchain "rfoot" "bip_foot_R" knee 0 0 0
$ikchain "lfoot" "bip_foot_L" knee 0 0 0

$ikautoplaylock "lfoot" 1 0.1
$ikautoplaylock "rfoot" 1 0.1

$sequence "ragdoll" {
	"M_Avg_Bums_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$includemodel "characters/M_Avg/M_Avg_Animations.mdl"

$collisionjoints "M_Avg_Bums_physics.smd"
{
	$mass 150
	$inertia 3
	$damping 0.21
	$rotdamping 1.95
	$rootbone "bip_pelvis"

	$jointdamping "bip_pelvis" 0.01
	$jointrotdamping "bip_pelvis" 0.4

	$jointdamping "bip_spine_2" 0.01
	$jointrotdamping "bip_spine_2" 0.4
	$jointconstrain "bip_spine_2" x limit -35 41 0
	$jointconstrain "bip_spine_2" y limit -50 53 0
	$jointconstrain "bip_spine_2" z limit -23 19 0

	$jointdamping "bip_upperArm_R" 0.23
	$jointrotdamping "bip_upperArm_R" 0.9
	$jointconstrain "bip_upperArm_R" x limit -19 40 0
	$jointconstrain "bip_upperArm_R" y limit -106 39 0
	$jointconstrain "bip_upperArm_R" z limit -80 82 0

	$jointrotdamping "bip_upperArm_L" 0.9
	$jointconstrain "bip_upperArm_L" x limit -40 21 0
	$jointconstrain "bip_upperArm_L" y limit -68 61 0
	$jointconstrain "bip_upperArm_L" z limit -108 35 0

	$jointdamping "bip_lowerArm_L" 0.3
	$jointrotdamping "bip_lowerArm_L" 2.65
	$jointconstrain "bip_lowerArm_L" x limit -12 12 0
	$jointconstrain "bip_lowerArm_L" y limit 0 77 0
	$jointconstrain "bip_lowerArm_L" z limit 0 0 0

	$jointdamping "bip_hand_L" 0.18
	$jointrotdamping "bip_hand_L" 2.1
	$jointconstrain "bip_hand_L" x limit -30 10 0
	$jointconstrain "bip_hand_L" y limit -12 8 0
	$jointconstrain "bip_hand_L" z limit -46 35 0

	$jointdamping "bip_lowerArm_R" 0.3
	$jointrotdamping "bip_lowerArm_R" 2.45
	$jointconstrain "bip_lowerArm_R" x limit -15 30 0
	$jointconstrain "bip_lowerArm_R" y limit 0 8 0
	$jointconstrain "bip_lowerArm_R" z limit -18 91 0

	$jointdamping "bip_hand_R" 0.19
	$jointconstrain "bip_hand_R" x limit -59 6 0
	$jointconstrain "bip_hand_R" y limit -8 12 0
	$jointconstrain "bip_hand_R" z limit -35 20 0

	$jointdamping "bip_hip_L" 0.16
	$jointrotdamping "bip_hip_L" 2.3
	$jointconstrain "bip_hip_L" x limit -12 28 0
	$jointconstrain "bip_hip_L" y limit -93 20 0
	$jointconstrain "bip_hip_L" z limit -19 30 0

	$jointdamping "bip_knee_L" 0.14
	$jointconstrain "bip_knee_L" x limit -12 8 0
	$jointconstrain "bip_knee_L" y limit -8 104 0
	$jointconstrain "bip_knee_L" z limit 0 1 0

	$jointdamping "bip_head" 0.23
	$jointrotdamping "bip_head" 3.15
	$jointconstrain "bip_head" x limit -50 50 0
	$jointconstrain "bip_head" y limit -48 41 0
	$jointconstrain "bip_head" z limit -26 30 0

	$jointconstrain "bip_hip_R" x limit -20 12 0
	$jointconstrain "bip_hip_R" y limit -91 20 0
	$jointconstrain "bip_hip_R" z limit -35 12 0

	$jointrotdamping "bip_knee_R" 2.1
	$jointconstrain "bip_knee_R" x limit -17 12 0
	$jointconstrain "bip_knee_R" y limit -3 88 0
	$jointconstrain "bip_knee_R" z limit 0 0 0

	$jointdamping "bip_foot_R" 0.11
	$jointrotdamping "bip_foot_R" 1.25
	$jointconstrain "bip_foot_R" x limit -21 22 0
	$jointconstrain "bip_foot_R" y limit -19 25 0
	$jointconstrain "bip_foot_R" z limit -17 24 0

	$jointdamping "bip_foot_L" 0.16
	$jointrotdamping "bip_foot_L" 1.6
	$jointconstrain "bip_foot_L" x limit -10 22 0
	$jointconstrain "bip_foot_L" y limit -19 25 0
	$jointconstrain "bip_foot_L" z limit -17 24 0

	$jointcollide "bip_foot_R" "bip_foot_L"
	$jointcollide "bip_foot_R" "bip_knee_L"
	$jointcollide "bip_foot_R" "bip_hip_L"
	$jointcollide "bip_knee_R" "bip_foot_L"
	$jointcollide "bip_knee_R" "bip_knee_L"
	$jointcollide "bip_knee_R" "bip_hip_L"
	$jointcollide "bip_hip_R" "bip_foot_L"
	$jointcollide "bip_hip_R" "bip_knee_L"
	$jointcollide "bip_hip_R" "bip_hip_L"
	$jointcollide "bip_hand_R" "bip_head"
	$jointcollide "bip_hand_R" "bip_spine_2"
	$jointcollide "bip_hand_R" "bip_pelvis"
	$jointcollide "bip_hand_R" "bip_hip_R"
	$jointcollide "bip_lowerArm_R" "bip_head"
	$jointcollide "bip_lowerArm_R" "bip_spine_2"
	$jointcollide "bip_lowerArm_R" "bip_pelvis"
	$jointcollide "bip_lowerArm_R" "bip_hip_R"
	$jointcollide "bip_upperArm_R" "bip_spine_2"
	$jointcollide "bip_hand_L" "bip_hand_R"
	$jointcollide "bip_hand_L" "bip_head"
	$jointcollide "bip_hand_L" "bip_spine_2"
	$jointcollide "bip_hand_L" "bip_pelvis"
	$jointcollide "bip_hand_L" "bip_hip_L"
	$jointcollide "bip_lowerArm_L" "bip_hand_R"
	$jointcollide "bip_lowerArm_L" "bip_lowerArm_R"
	$jointcollide "bip_lowerArm_L" "bip_head"
	$jointcollide "bip_lowerArm_L" "bip_spine_2"
	$jointcollide "bip_lowerArm_L" "bip_pelvis"
	$jointcollide "bip_lowerArm_L" "bip_hip_L"
	$jointcollide "bip_upperArm_L" "bip_spine_2"
}
$prefab "bum_01" "#Skin1" "#m_avg_ss_pants_L0" "#M_Avg_Beard_Head_02_L0" "#hair_bum_m_01_L0"
$prefab "bum_02" "#Skin2" "#m_avg_ss_shorts_01_L0" "#m_avg_suit_head_01_L0" "#hair_bum_m_03_L0"
$prefab "bum_03" "#Skin3" "#m_avg_ss_shorts_01_L0" "#M_Avg_Moustache_Head_01_L0" "#hair_bum_m_02_L0"
$prefab "bum_04" "#Skin4" "#m_avg_ss_pants_L0" "#M_Avg_Beard_Head_02_L0" "#hair_bum_m_01_L0"
$prefab "bum_04_supe" "#Skin5" "#m_avg_ss_pants_L0" "#M_Avg_Beard_Head_02_L0" "#hair_bum_m_01_L0"
$prefab "bum_05" "#Skin6" "#m_avg_ss_shorts_01_L0" "#m_avg_suit_head_01_L0" "#hair_bum_m_03_L0"