$include "../base/sharedbones.qci"

$modelname "characters/player/player01.mdl"

//$bodygroup "male_05"
//{
//	studio "peasant1_reference.smd"
//}

$bodygroup "body"
{
	studio "body.smd"
}

$bodygroup "hands"
{
	studio "hands.smd"
	blank
}

$bodygroup "legs"
{
	studio "legs.smd"
	blank
}

$bodygroup "boots"
{
	studio "boots.smd"
	blank
}

$surfaceprop "flesh"

$contents "solid"

$eyeposition 0 0 70

$maxeyedeflection 90

$mostlyopaque

$cdmaterials "models/characters/player/"
$cdmaterials "models/humans/male/"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.43 -3.51 0.05 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.8 -5.5 0.1 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "mainhand" "ValveBiped.Anim_Attachment_RH" -0.25 2.40 0.40 rotate 0 0 -90
$attachment "offhand" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "offhand_shield" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "back" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 90
$attachment "back_shield" "ValveBiped.Bip01_Spine4" -4.45 -2.25 4.35 rotate 15 -100 -90
$attachment "back_staff" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 -90
$attachment "back_crossbow" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 0 70 180
$attachment "waist" "ValveBiped.Bip01_Spine" 0 -4 0 rotate 0 0 0
$attachment "waist_l" "ValveBiped.Bip01_Spine" 0 1 7 rotate -80 0 30
$attachment "waist_r" "ValveBiped.Bip01_Spine" 0 1 -7 rotate -105 0 30
$attachment "stomache" "ValveBiped.Bip01_Spine2" 0 8 0 rotate 0 0 0
$attachment "shoulder_l" "ValveBiped.Bip01_L_Clavicle" 5 4 0 rotate 0 0 0
$attachment "shoulder_r" "ValveBiped.Bip01_R_Clavicle" 5 4 0 rotate 0 0 0
$attachment "ankle_l" "ValveBiped.Bip01_L_Foot" 0 0 0 rotate 0 0 180
$attachment "ankle_r" "ValveBiped.Bip01_R_Foot" 0 0 0 rotate 0 0 180
$attachment "neckwound" "ValveBiped.Bip01_Spine4" 3 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0
$bbox -13 -13 0 13 13 72

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Anim_Attachment_RH"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Anim_Attachment_LH"

$proceduralbones "peasant1.vrd"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"peasant1_anim_@ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "death" "../base/anims/death.smd" activity ACT_INF_DEATH 1 fps 35 node "standing"
$sequence "death_idle" "../base/anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 35 node "standing"
$sequence "mounted" "../base/anims/mounted.smd" fps 35

$includemodel "humans/male_shared.mdl"
$includemodel "humans/male_ss.mdl"
$includemodel "humans/male_gestures.mdl"
$includemodel "humans/male_postures.mdl"

// HL2 Run + Walk

$sequence idle01 ../base/anims/idle01 loop frames 0 358 fixuploop -15 0 activity ACT_IDLE 1 node "standing"

// walking, no weapon
$animation a_WalkS ../base/anims/WalkS loop LX LY startloop 0 rotateto -180 {
	alignto idle01
	// ikrule lfoot footstep 0 range  5 11 25 30
	// ikrule rfoot footstep 1 range 22 28  6 11
}
$animation a_WalkSE ../base/anims/WalkSE loop LX LY startloop 0 rotateto -135 {
	alignto idle01
	// ikrule lfoot footstep 0 range  5  8 22 27
	// ikrule rfoot footstep 1 range 20 25 6 11
}
$animation a_WalkE ../base/anims/WalkE loop LX LY startloop 0 rotateto -90 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2  9 19 28
	// ikrule rfoot footstep 1 range 19 24  4  8
}
$animation a_WalkNE ../base/anims/WalkNE loop LX LY startloop 0 rotateto -45 {
	alignto idle01
	// ikrule lfoot footstep 0 range  4 11 23  0
	// ikrule rfoot footstep 1 range 18 25  8 13
}
$animation a_WalkN ../base/anims/WalkN loop LX LY startloop 0 rotateto 0 {
	alignto idle01
	// ikrule lfoot footstep 0 range  4 10 19 25
	// ikrule rfoot footstep 1 range 18 26 3 10
}
$animation a_WalkNW ../base/anims/WalkNW loop LX LY startloop 0 rotateto 45 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2  9 21 27
	// ikrule rfoot footstep 1 range 18 25  7 13
}
$animation a_WalkW ../base/anims/WalkW loop LX LY startloop 0 rotateto 90 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2 11 22 28
	// ikrule rfoot footstep 1 range 18 27  6 13
}
$animation a_WalkSW ../base/anims/WalkSW loop LX LY startloop 0 rotateto 135 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2 10 18 25
	// ikrule rfoot footstep 1 range 16 22  7 12
}

$sequence walk_all {
	a_walkS a_walkSE a_walkE a_walkNE a_walkN a_walkNW a_walkW a_walkSW a_walkS
	blendwidth 9 blend move_yaw -180 180 ACT_WALK 1 node "walking"
{ event 2051 9 }
{ event 2050 23 }
}

$animation a_RunS ../base/anims/RunS loop LX LY startloop 0 rotateto -180 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 9 12 ..
	// ikrule rfoot footstep 1 range .. 0 3 ..
}
$animation a_RunSE ../base/anims/RunSE loop LX LY startloop 0 rotateto -135 fps 29 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 11 ..
	// ikrule rfoot footstep 1 range .. 17 1 ..
}
$animation a_RunE ../base/anims/RunE loop LX LY startloop 0 rotateto -90 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 9 ..
	// ikrule rfoot footstep 1 range .. 14 0 ..
}
$animation a_RunNE ../base/anims/RunNE loop LX LY startloop 0 rotateto -45 fps 29 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 6 10 ..
	// ikrule rfoot footstep 1 range .. 17 19 ..
}
$animation a_RunN ../base/anims/RunN loop LX LY startloop 0 rotateto 0 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 8 10 ..
	// ikrule rfoot footstep 1 range .. 17 1 ..
}
$animation a_RunNW ../base/anims/RunNW loop LX LY startloop 0 rotateto 45 fps 28 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 9 11 ..
	// ikrule rfoot footstep 1 range .. 18 1 ..
}
$animation a_RunW ../base/anims/RunW loop LX LY startloop 0 rotateto 90 fps 32 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 9 ..
	// ikrule rfoot footstep 1 range .. 16 0 ..
}
$animation a_RunSW ../base/anims/RunSW loop LX LY startloop 0 rotateto 135 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 8 11 ..
	// ikrule rfoot footstep 1 range .. 16 1 ..
}

$sequence run_all {
	a_runS a_runSE a_runE a_runNE a_runN a_runNW a_runW a_runSW a_runS
	blendwidth 9 blend move_yaw -180 180 ACT_RUN 1 node "running"
}

$sequence "unarmed_idle" {
	"../base/anims/unarmed_idle.smd"
	activity "ACT_INF_UNARMED_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

$weightlist "weights_aoc_stab.smd" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_Neck1" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.forward" 1
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Bip01_R_Wrist" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_L_Finger4" 1
	 "ValveBiped.Bip01_L_Finger41" 1
	 "ValveBiped.Bip01_L_Finger42" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
	 "ValveBiped.Bip01_R_Finger4" 1
	 "ValveBiped.Bip01_R_Finger41" 1
	 "ValveBiped.Bip01_R_Finger42" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
}

$sequence "slash_1h_00_l" {
	"../base/anims/slash_left.smd"
	activity "ACT_INF_MELEE_1H_LEFT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 42
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$collisionjoints "peasant1_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 1.75
	$rotdamping 10


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -37 37 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 59 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 0
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Pelvis"
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.300000"
		"animfrictiontimehold" "0.000000"
	}
	editparams 
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "90.000000"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01_spine1"
	}
}
