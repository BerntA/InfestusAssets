
$ModelName "mounts/dog_animations.mdl"
$SurfaceProp "default"
$Contents "solid"
$IllumPosition 5.943 -9.101 42.984
$CDMaterials "models/mounts/dog/"

$Attachment "eyes" "Dog_Model.Focus_Ring" 0 0 0 rotate 0 90 -180
$Attachment "forward" "Dog_Model.forward" 0 0 0 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -27.676 -37.792 -3.013 45.877 49.678 88.98

// The 32 below is a guess until further is known about the format.
$AnimBlockSize 32

$BoneSaveFrame "Dog_Model.Pelvis" position rotation
$BoneSaveFrame "Dog_Model.Leg1_L" rotation
$BoneSaveFrame "Dog_Model.Leg2_L" rotation
$BoneSaveFrame "Dog_Model.Foot_L" rotation
$BoneSaveFrame "Dog_Model.Leg1_R" rotation
$BoneSaveFrame "Dog_Model.Leg2_R" rotation
$BoneSaveFrame "Dog_Model.Foot_R" rotation
$BoneSaveFrame "Dog_Model.Spine1" position rotation
$BoneSaveFrame "Dog_Model.Spine2" rotation
$BoneSaveFrame "Dog_Model.Spine3" rotation
$BoneSaveFrame "Dog_Model.Neck1" rotation
$BoneSaveFrame "Dog_Model.Neck1_Length" rotation
$BoneSaveFrame "Dog_Model.Neck2" rotation
$BoneSaveFrame "Dog_Model.Neck2_Length" position rotation
$BoneSaveFrame "Dog_Model.Eye" rotation
$BoneSaveFrame "Dog_Model.Focus_Ring" rotation
$BoneSaveFrame "Dog_Model.Clavical_L" rotation
$BoneSaveFrame "Dog_Model.Arm1_L" rotation
$BoneSaveFrame "Dog_Model.Arm2_L" rotation
$BoneSaveFrame "Dog_Model.Hand_L" rotation
$BoneSaveFrame "Dog_Model.Clavical_R" rotation
$BoneSaveFrame "Dog_Model.Arm1_R" rotation
$BoneSaveFrame "Dog_Model.Arm2_R" rotation
$BoneSaveFrame "Dog_Model.Hand_R" rotation
$BoneSaveFrame "Dog_Model.forward" rotation

$SectionFrames 30 119

$PoseParameter "move_yaw" -180 180 loop 0
$PoseParameter "aim_yaw" -45 45 loop 0
$PoseParameter "aim_pitch" -45 45 loop 0
$PoseParameter "body_yaw" -27.40789 27.18857 loop 0
$PoseParameter "spine_yaw" -32.22617 26.90042 loop 0
$PoseParameter "neck_trans" -11.49777 21.30198 loop 0
$PoseParameter "head_yaw" -70.16532 62.86636 loop 0
$PoseParameter "head_pitch" -73.45417 60.08907 loop 0
$PoseParameter "head_roll" -59.52628 59.03973 loop 0

$IKChain "rhand" "Dog_Model.Hand_R" knee 0.707 0.707 0
$IKChain "lhand" "Dog_Model.Hand_L" knee 0.707 0.707 0
$IKChain "rfoot" "Dog_Model.Foot_R" knee 0.707 -0.707 0
$IKChain "lfoot" "Dog_Model.Foot_L" knee 0.707 -0.707 0

$IKAutoPlayLock "rhand" 1 0.1
$IKAutoPlayLock "lhand" 1 0.1
$IKAutoPlayLock "rfoot" 1 0.1
$IKAutoPlayLock "lfoot" 1 0.1

$WeightList "weights_body_rot_z" {
	 "Dog_Model.Pelvis" 1
	 "Dog_Model.Leg1_L" 0
	 "Dog_Model.Leg2_L" 0
	 "Dog_Model.Foot_L" 0
	 "Dog_Model.Leg1_R" 0
	 "Dog_Model.Leg2_R" 0
	 "Dog_Model.Foot_R" 0
	 "Dog_Model.Spine1" 1
	 "Dog_Model.Spine2" 1
	 "Dog_Model.Spine3" 1
	 "Dog_Model.Neck1" 0
	 "Dog_Model.Neck1_Length" 0
	 "Dog_Model.Neck2" 0
	 "Dog_Model.Neck2_Length" 0
	 "Dog_Model.Eye" 0
	 "Dog_Model.Focus_Ring" 0
	 "Dog_Model.Clavical_L" 0
	 "Dog_Model.Arm1_L" 0
	 "Dog_Model.Arm2_L" 0
	 "Dog_Model.Hand_L" 0
	 "Dog_Model.Clavical_R" 0
	 "Dog_Model.Arm1_R" 0
	 "Dog_Model.Arm2_R" 0
	 "Dog_Model.Hand_R" 0
	 "Dog_Model.forward" 0
}

$WeightList "weights_neck_trans_x" {
	 "Dog_Model.Pelvis" 1
	 "Dog_Model.Leg1_L" 0
	 "Dog_Model.Leg2_L" 0
	 "Dog_Model.Foot_L" 0
	 "Dog_Model.Leg1_R" 0
	 "Dog_Model.Leg2_R" 0
	 "Dog_Model.Foot_R" 0
	 "Dog_Model.Spine1" 1
	 "Dog_Model.Spine2" 1
	 "Dog_Model.Spine3" 1
	 "Dog_Model.Neck1" 1
	 "Dog_Model.Neck1_Length" 1
	 "Dog_Model.Neck2" 1
	 "Dog_Model.Neck2_Length" 1
	 "Dog_Model.Eye" 1
	 "Dog_Model.Focus_Ring" 1
	 "Dog_Model.Clavical_L" 0
	 "Dog_Model.Arm1_L" 0
	 "Dog_Model.Arm2_L" 0
	 "Dog_Model.Hand_L" 0
	 "Dog_Model.Clavical_R" 0
	 "Dog_Model.Arm1_R" 0
	 "Dog_Model.Arm2_R" 0
	 "Dog_Model.Hand_R" 0
	 "Dog_Model.forward" 1
}

$Animation "a_run_S" "anims/a_run_S.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin -19.65 8.42 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 2 8 12 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -34.45 -20.24 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin -8.26 37.4 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin -14.64 -40.75 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_run_SW" "anims/a_run_SW.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin -14.88 44.59 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 2 8 12 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -40.3 10.23 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin -5.26 44.11 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin -1.91 -11.27 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_run_W" "anims/a_run_W.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 3 fakeorigin -34.98 16.18 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 3 7 12 target 3
	ikrule "rfoot" footstep contact 2 fakeorigin -17.24 0.59 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 2 5 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin 21.9 63.67 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 14 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin 28.14 -5.94 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 6 11 1 6 target 0
	walkframe 14 LX LY
}

$Animation "a_run_NW" "anims/a_run_NW.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin -12.97 14.08 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 2 8 12 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -9.07 -7.68 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin 55.86 53.33 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin 44.43 -16.62 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_run_N" "anims/a_run_N.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin -7.79 9.24 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 2 8 12 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -5.87 -15.05 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin 55.08 29.34 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin 51.37 -32.9 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_run_NE" "anims/a_run_NE.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin 5.91 -4.8 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 12 2 8 12 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -2.79 -18.12 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin 32.45 2.35 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin 59.04 -55.57 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_run_E" "anims/a_run_E.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 3 fakeorigin -6.89 -4 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 11 3 6 11 target 3
	ikrule "rfoot" footstep contact 1 fakeorigin -24.7 -34.47 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 1 6 10 target 2
	ikrule "lhand" footstep contact 11 fakeorigin 23.72 9.28 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 6 11 1 6 target 1
	ikrule "rhand" footstep contact 13 fakeorigin 32.03 -45.59 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 8 13 3 8 target 0
	walkframe 14 LX LY
}

$Animation "a_run_SE" "anims/a_run_SE.smd" {
	fps 30
	loop
	ikrule "lfoot" footstep contact 2 fakeorigin -30.65 5.55 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 11 2 6 11 target 3
	ikrule "rfoot" footstep contact 2 fakeorigin -39.65 -25.63 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 10 2 5 10 target 2
	ikrule "lhand" footstep contact 10 fakeorigin 14.44 -0.64 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 5 10 1 5 target 1
	ikrule "rhand" footstep contact 11 fakeorigin 9.2 -65.63 0 fakerotate 0 0 0 floor 0 height 18 radius 0 range 7 11 3 7 target 0
	walkframe 14 LX LY
}

$Animation "a_pose_neutral" "anims/a_pose_neutral.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$Animation "a_body_rot" "anims/a_body_rot.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_body_rot_z_rt" "anims/a_body_rot_z_rt.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_body_rot_z_lt" "anims/a_body_rot_z_lt.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_spine_rot" "anims/a_spine_rot.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_spine_rot_z_rt" "anims/a_spine_rot_z_rt.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_spine_rot_z_lt" "anims/a_spine_rot_z_lt.smd" {
	fps 30
	weightlist "weights_body_rot_z"
}

$Animation "a_head_rot" "anims/a_head_rot.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_lt" "anims/a_head_rot_lt.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_rt" "anims/a_head_rot_rt.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_neck_trans" "anims/a_neck_trans.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_neck_trans_fwd" "anims/a_neck_trans_fwd.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_neck_trans_back" "anims/a_neck_trans_back.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_dwn" "anims/a_head_rot_dwn.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_up" "anims/a_head_rot_up.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_z_rt" "anims/a_head_rot_z_rt.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Animation "a_head_rot_z_lt" "anims/a_head_rot_z_lt.smd" {
	fps 30
	weightlist "weights_neck_trans_x"
}

$Sequence "idle01" {
	"anims/idle.smd"
	activity "ACT_IDLE_SWORD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lfoot" footstep contact 0 fakeorigin -27.68 11.8 0 fakerotate 0 0 0 floor 0 height 20 radius 0 range 0 0 0 0 target 3
	ikrule "rfoot" footstep contact 0 fakeorigin -26.75 -15.08 0 fakerotate 0 0 0 floor 0 height 20 radius 0 range 0 0 0 0 target 2
	ikrule "lhand" footstep contact 0 fakeorigin 17.83 39.78 0 fakerotate 0 0 0 floor 0 height 20 radius 0 range 0 0 0 0 target 1
	ikrule "rhand" footstep contact 0 fakeorigin 27.72 -32.9 0 fakerotate 0 0 0 floor 0 height 20 radius 0 range 0 0 0 0 target 0
}

$Sequence "run01" {
	"a_run_S"
	"a_run_SE"
	"a_run_E"
	"a_run_NE"
	"a_run_N"
	"a_run_NW"
	"a_run_W"
	"a_run_SW"
	"a_run_S"
	activity "ACT_3PV_HL2MP_RUN_SHORTSWORD" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	node "running"
}

$Sequence "jump01" {
	"anims/jump_fix.smd"
	activity "ACT_3PV_HL2MP_JUMP_SHORTSWORD" 1
	fadein 0.2
	fadeout 0.2
	fps 45
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 139 139 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 139 139 target 1 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 139 139 target 2 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 139 139 target 3 usesequence 
	walkframe 40 LX LY LZ LZR
	walkframe 50 LX LY LZ LZR
	walkframe 60 LX LY LZ LZR
	walkframe 70 LX LY LZ LZR
	walkframe 80 LX LY LZ LZR
	walkframe 90 LX LY LZ LZR
	walkframe 139 LX LY LZ LZR
}

$Sequence "body_rot_z" {
	"a_body_rot_z_lt"
	"a_body_rot"
	"a_body_rot_z_rt"
	autoplay
	blend "body_yaw" 27.18857 -27.40789
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$Sequence "spine_rot_z" {
	"a_spine_rot_z_lt"
	"a_spine_rot"
	"a_spine_rot_z_rt"
	autoplay
	blend "spine_yaw" 26.90042 -32.22617
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$Sequence "neck_trans_x" {
	"a_neck_trans_back"
	"a_neck_trans"
	"a_neck_trans_fwd"
	autoplay
	blend "neck_trans" -11.49777 21.30198
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$Sequence "head_rot_z" {
	"a_head_rot_z_lt"
	"a_head_rot"
	"a_head_rot_z_rt"
	autoplay
	blend "head_yaw" 62.86636 -70.16532
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$Sequence "head_rot_y" {
	"a_head_rot_dwn"
	"a_head_rot"
	"a_head_rot_up"
	autoplay
	blend "head_pitch" 60.08907 -73.45417
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$Sequence "head_rot_x" {
	"a_head_rot_lt"
	"a_head_rot"
	"a_head_rot_rt"
	autoplay
	blend "head_roll" -59.52628 59.03973
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}
