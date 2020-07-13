
$modelname "characters/npc/devoured01.mdl"

$model "studio" "ref.smd"

$poseparameter move_yaw -180.00 180.00 wrap
$cdmaterials "models/characters/npc/demon/"

$attachment "head" "ValveBiped.HC_Rear_Bone" -0.00 -0.00 0.00 rotate -0.00 -0.00 -0.00
$attachment "eyes" "ValveBiped.HC_Body_Bone" 0.00 -0.00 -0.00 rotate -0.00 0.00 -50.00
$attachment "head" "ValveBiped.HC_Body_Bone" 0.00 -0.00 -0.00 rotate -0.00 0.00 -50.00
$attachment "chest" "ValveBiped.Bip01_Spine4" -3.00 6.00 0.00 rotate -0.00 60.00 90.00
$attachment "maw" "ValveBiped.Bip01_Spine2" 0.00 8.00 -0.00 rotate -0.00 90.00 90.00
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" -0.00 -0.00 0.00 rotate -0.00 -0.00 0.00
$attachment "Blood_Right" "ValveBiped.Bip01_R_Finger2" 0.00 0.00 -0.00 rotate 0.00 -0.00 0.00

$surfaceprop "flesh"
$eyeposition -0.000 0.000 64.000
$illumposition 2.887 4.810 33.803

$sequence idle "anims/idle" loop ACT_IDLE 1 fps 20.00

$animation a_WalkS "anims/a_RunS" loop fps 30 LX LY 
$animation a_WalkSE "anims/a_RunSE" loop fps 30 LX LY 
$animation a_WalkE "anims/a_RunE" loop fps 30 LX LY 
$animation a_WalkNE "anims/a_RunNE" loop fps 30 LX LY 
$animation a_WalkN "anims/a_RunN" loop fps 30 LX LY 
$animation a_WalkNW "anims/a_RunNW" loop fps 30 LX LY 
$animation a_WalkW "anims/a_RunW" loop fps 30 LX LY 
$animation a_WalkSW "anims/a_RunSW" loop fps 30 LX LY 
$sequence walk {
	a_WalkS a_WalkSE a_WalkE
	a_WalkNE a_WalkN a_WalkNW
	a_WalkW a_WalkSW a_WalkS
	blendwidth 9
	blend "move_yaw" -180 180	
	"ACT_WALK" 1 
	node "walking" 
	{ event AE_MONSTER_STEP_LEFT 9 } 
	{ event AE_MONSTER_STEP_RIGHT 1 } 
}

$animation a_RunS "anims/a_RunS" loop fps 50 LX LY 
$animation a_RunSE "anims/a_RunSE" loop fps 50 LX LY 
$animation a_RunE "anims/a_RunE" loop fps 50 LX LY 
$animation a_RunNE "anims/a_RunNE" loop fps 50 LX LY 
$animation a_runN "anims/a_runN" loop fps 50 LX LY 
$animation a_RunNW "anims/a_RunNW" loop fps 50 LX LY 
$animation a_RunW "anims/a_RunW" loop fps 50 LX LY 
$animation a_RunSW "anims/a_RunSW" loop fps 50 LX LY 
$sequence run {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_RUN" 1 
	node "running" 
	{ event AE_MONSTER_STEP_LEFT 9 } 
	{ event AE_MONSTER_STEP_RIGHT 1 } 
}

$sequence melee_01 "anims/melee_01" ACT_MELEE_ATTACK1 1 fps 30.00 {
  { event AE_MONSTER_ATTACK_RIGHT 25 } 
  { event AE_MONSTER_ATTACK_LEFT 5 } 
}

$sequence FlinchC "anims/FlinchC" ACT_BIG_FLINCH 1 fps 30.00
$sequence FlinchR "anims/FlinchR" ACT_FLINCH_RIGHTARM 1 fps 30.00
$sequence FlinchL "anims/FlinchL" ACT_FLINCH_LEFTARM 1 fps 30.00

// EXTRA
$sequence ragdoll "anims/ragdoll" ACT_DIERAGDOLL 1 fps 30.00

$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000