
$include "../base/sharedbones.qci"
$modelname "characters/npc/brawler01.mdl"

$bodygroup "rebel"
{
	studio "../merchants/merchant01.smd"
}

$bodygroup "chest"
{
	blank
	studio "../../Items/Chest/chest01/ref.smd"	
}

$bodygroup "helm"
{
	blank
	studio "../../Items/Helmets/helm01/ref.smd"
	studio "../../Items/Helmets/helm10/ref.smd"	
}

$surfaceprop "flesh"
$contents "solid"
$eyeposition 0 0 70
$maxeyedeflection 90
$mostlyopaque

$cdmaterials "models/items/chests/plate/"
$cdmaterials "models/items/helmets/plate/"
$cdmaterials "models/characters/npc/merchant/"
$cdmaterials "models/humans/male/"

$texturegroup "skinfamilies"
{
	{ "peasant_body1" "peasant_head" }
	{ "peasant_body1" "peasant_head2" }
	{ "peasant_body1" "peasant_head3" }
	
	{ "peasant_body2" "peasant_head" }
	{ "peasant_body2" "peasant_head2" }
	{ "peasant_body2" "peasant_head3" }
	
	{ "peasant_body3" "peasant_head" }
	{ "peasant_body3" "peasant_head2" }
	{ "peasant_body3" "peasant_head3" }
	
	{ "peasant_body_dead1" "peasant_head_dead1" }
}

$cbox 0 0 0 0 0 0
$bbox -13 -13 0 13 13 72

$proceduralbones "../merchants/merchant01.vrd"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$attachment "mainhand" "ValveBiped.Anim_Attachment_RH" -0.25 2.40 0.40 rotate 0 0 -90
$attachment "offhand" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "offhand_shield" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "back" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 90
$attachment "back_shield" "ValveBiped.Bip01_Spine4" -4.45 -2.25 4.35 rotate 15 -100 -90
$attachment "back_staff" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 -90
$attachment "back_crossbow" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 0 70 180
$attachment "waist_l" "ValveBiped.Bip01_Spine" 0 1 7 rotate -80 0 30
$attachment "waist_r" "ValveBiped.Bip01_Spine" 0 1 -7 rotate -105 0 30

$sequence idle01 "../base/anims/idle01.smd" loop frames 0 358 fixuploop -15 0 activity ACT_IDLE 1 node "standing"
$sequence idle01_angry "boxing_idle.smd" loop activity ACT_IDLE_ANGRY 1 node "standing"

$sequence "ragdoll" {
	"../merchants/ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$weightlist "weightattacking" {
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

$sequence "attack01" {
	"boxing_attack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "attack02" {
	"boxing_attack02.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "attack03" {
	"boxing_attack03.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "attack04" {
	"boxing_attack03.smd"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "death" "../base/anims/death.smd" activity ACT_INF_DEATH 1 fps 35 node "standing"
$sequence "death_idle" "../base/anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 35 node "standing"

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

// swimming
$sequence swim_idle ../base/anims/swim_idle loop frames 0 58 fixuploop -15 0 activity ACT_SWIM_IDLE 1 node "standing" fps 34

$animation a_SwimS ../base/anims/SwimS loop LX LY startloop 0 rotateto -180 {
	alignto swim_idle
}
$animation a_SwimSE ../base/anims/SwimSE loop LX LY startloop 0 rotateto -135 {
	alignto swim_idle
}
$animation a_SwimE ../base/anims/SwimE loop LX LY startloop 0 rotateto -90 {
	alignto swim_idle
}
$animation a_SwimNE ../base/anims/SwimNE loop LX LY startloop 0 rotateto -45 {
	alignto swim_idle
}
$animation a_SwimN ../base/anims/SwimN loop LX LY startloop 0 rotateto 0 {
	alignto swim_idle
}
$animation a_SwimNW ../base/anims/SwimNW loop LX LY startloop 0 rotateto 45 {
	alignto swim_idle
}
$animation a_SwimW ../base/anims/SwimW loop LX LY startloop 0 rotateto 90 {
	alignto swim_idle
}
$animation a_SwimSW ../base/anims/SwimSW loop LX LY startloop 0 rotateto 135 {
	alignto swim_idle
}

$sequence swim_all {
	a_SwimS a_SwimSE a_SwimE a_SwimNE a_SwimN a_SwimNW a_SwimW a_SwimSW a_SwimS
	blendwidth 9 blend move_yaw -180 180 ACT_SWIM 1 node "running"
}

$sequence "knockdown" {
	"..\base\anims\knockdown.smd"
	activity "ACT_INF_KNOCKDOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 26
}

// SpellCast

$sequence "cast_start" {
	"../base/anims/cast_start.smd"
	activity "ACT_INF_MAGIC_CAST_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weightattacking"
}

$sequence "cast_loop" {
	"../base/anims/cast_loop.smd"
	activity "ACT_INF_MAGIC_CAST_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_end" {
	"../base/anims/cast_end.smd"
	activity "ACT_INF_MAGIC_CAST_END" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_start_instant" {
	"../base/anims/cast_start_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_START" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weightattacking"
}

$sequence "cast_loop_instant" {
	"../base/anims/cast_loop_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_end_instant" {
	"../base/anims/cast_end_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weightattacking"
}

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1
