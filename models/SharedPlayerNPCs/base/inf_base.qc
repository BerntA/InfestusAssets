$include "sharedbones.qci"

$modelname "characters/anims/shared.mdl"
$surfaceprop "flesh"
$contents "solid"
$cdmaterials "models/player/"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

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

$sequence "merch_greet1" {
	"anims\aoc_cheer.smd"
	activity "ACT_INF_GREETINGS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "merch_greet2" {
	"anims\aoc_cheer2.smd"
	activity "ACT_INF_GREETINGS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "taunt01" {
	"anims\taunt01.smd"
	activity "ACT_INF_TAUNT" 1
	fadein 0.5
	fadeout 0.5
	fps 40
	
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
	
	weightlist "weightattacking"
}

// Right

$sequence "slash_1h_05_r" {
	"anims\aoc_slash_05.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "slash_1h_04_r" {
	"anims\aoc_slash_04.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "slash_1h_03_r" {
	"anims\aoc_slash_03.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "slash_1h_02_r" {
	"anims\aoc_slash_02.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "slash_1h_01_r" {
	"anims\aoc_slash_01.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "slash_1h_00_r" {
	"anims\aoc_doubleslash.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1
	weightlist "weightattacking"
}

// Left

$sequence "slash_1h_00_l" {
	"anims\slash_left.smd"
	activity "ACT_INF_MELEE_1H_LEFT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 42
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

// Special Attacks

// STAB 1H

$animation "a_stab_corrective" "anims\a_stab_1h_correction.smd" {
}

$animation "a_stab_1h" "anims\a_stab_1h.smd" {
	fps 32
	loop
	subtract "a_stab_corrective" 0
	weightlist "weightattacking"
}

$sequence "stab_1h_mod" {
	"anims\a_stab_1h_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 1 usesequence 
	walkframe 36 LX LY
	weightlist "weightattacking"
}

$sequence "stab_1h" {
	"a_stab_1h"
	activity "ACT_INF_MELEE_1H_RIGHT_STAB" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "stab_1h_mod"
}

// SMASH 1H

$animation "a_smash_1h_corrective" "anims\a_smash_1h_correction.smd" {
}

$animation "a_smash_1h" "anims\a_smash_1h.smd" {
	fps 83
	loop
	subtract "a_smash_1h_corrective" 0
	weightlist "weightattacking"
}

$sequence "smash_1h_mod" {
	"anims\a_smash_1h_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	walkframe 100 LX LY
	weightlist "weightattacking"
}

$sequence "smash_1h" {
	"a_smash_1h"
	activity "ACT_INF_MELEE_1H_RIGHT_SMASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "smash_1h_mod"
}

// 2H Slash

$animation "a_slash_2h_corrective" "anims\a_slash_2h_correction.smd" {
}

$animation "a_slash_2h" "anims\a_slash_2h.smd" {
	fps 48
	loop
	subtract "a_slash_2h_corrective" 0
	weightlist "weightattacking"
}

$sequence "slash_2h_mod" {
	"anims\a_slash_2h_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	walkframe 75 LX LY
	weightlist "weightattacking"
}

$sequence "slash_2h" {
	"a_slash_2h"
	activity "ACT_INF_MELEE_2H_SLASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "slash_2h_mod"
}

// 2H Smash

$animation "a_smash_2h_corrective" "anims\a_smash_2h_correction.smd" {
}

$animation "a_smash_2h" "anims\a_smash_2h.smd" {
	fps 47
	loop
	subtract "a_smash_2h_corrective" 0
	weightlist "weightattacking"
}

$sequence "smash_2h_mod" {
	"anims\a_smash_2h_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	walkframe 75 LX LY
	weightlist "weightattacking"
}

$sequence "smash_2h" {
	"a_smash_2h"
	activity "ACT_INF_MELEE_2H_SMASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "smash_2h_mod"
}

// 2H Stab

$animation "a_stab_2h_corrective" "anims\a_stab_2h_correction.smd" {
}

$animation "a_stab_2h" "anims\a_stab_2h.smd" {
	fps 48
	loop
	subtract "a_stab_2h_corrective" 0
	weightlist "weightattacking"
}

$sequence "stab_2h_mod" {
	"anims\a_stab_2h_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	walkframe 75 LX LY
	weightlist "weightattacking"
}

$sequence "stab_2h" {
	"a_stab_2h"
	activity "ACT_INF_MELEE_2H_STAB" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "stab_2h_mod"
}

// Blunt 2H Slash

$animation "a_slash_2h_blunt_corrective" "anims\a_slash_2h_blunt_correction.smd" {
}

$animation "a_slash_2h_blunt" "anims\a_slash_2h_blunt.smd" {
	fps 56
	loop
	subtract "a_slash_2h_blunt_corrective" 0
	weightlist "weightattacking"
}

$sequence "slash_2h_blunt_mod" {
	"anims\a_slash_2h_blunt_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	walkframe 100 LX LY
	weightlist "weightattacking"
}

$sequence "slash_2h_blunt" {
	"a_slash_2h_blunt"
	activity "ACT_INF_MELEE_2H_BLUNT_SLASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "slash_2h_blunt_mod"
}

// Smash 2H Blunt

$animation "a_smash_2h_blunt_corrective" "anims\a_smash_2h_blunt_correction.smd" {
}

$animation "a_smash_2h_blunt" "anims\a_smash_2h_blunt.smd" {
	fps 53
	loop
	subtract "a_smash_2h_blunt_corrective" 0
	weightlist "weightattacking"
}

$sequence "smash_2h_blunt_mod" {
	"anims\a_smash_2h_blunt_mod.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	walkframe 100 LX LY
	weightlist "weightattacking"
}

$sequence "smash_2h_blunt" {
	"a_smash_2h_blunt"
	activity "ACT_INF_MELEE_2H_BLUNT_SMASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "smash_2h_blunt_mod"
}

// Stab 2H Blunt

$animation "a_stab_2h_blunt_corrective" "anims\a_stab_2h_blunt_correction.smd" {
}

$animation "a_stab_2h_blunt" "anims\a_stab_2h_blunt.smd" {
	fps 53
	loop
	subtract "a_stab_2h_blunt_corrective" 0
	weightlist "weightattacking"
}

$sequence "stab_2h_blunt_mod" {
	"anims\a_stab_2h_blunt_mod"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	walkframe 100 LX LY
	weightlist "weightattacking"
}

$sequence "stab_2h_blunt" {
	"a_stab_2h_blunt"
	activity "ACT_INF_MELEE_2H_BLUNT_STAB" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "stab_2h_blunt_mod"
}

// MONSTER SUPPORT ANIMS

$sequence "monster_slash_generic" {
	"anims\aoc_slash_01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "monster_slash_right" {
	"anims\aoc_slash_01.smd"
	activity "ACT_INF_MELEE_SLASH_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "monster_slash_left" {
	"anims\slash_left.smd"
	activity "ACT_INF_MELEE_SLASH_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 42
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "monster_stab" {
	"a_stab_1h"
	activity "ACT_INF_MELEE_STAB" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "stab_1h_mod"
}

$sequence "monster_smash" {
	"a_smash_1h"
	activity "ACT_INF_MELEE_SMASH" 1
	delta
	fadein 0.2
	fadeout 0.2
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	addlayer "smash_1h_mod"
}

// DRAW Generic

$sequence "draw_1h_l" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_1h_l_shield" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_1h_r" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_1h_b" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_1h_b_shield" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_ranged" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_RANGED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "draw_2h" {
	"anims\aoc_flamberge_draw.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_2H" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

// Holster Generic

$sequence "holster_1h_l" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_1h_l_shield" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_LEFT_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_1h_r" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_1h_b" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_1h_b_shield" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_ranged" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_RANGED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "holster_2h" {
	"anims\aoc_flamberge_holster.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_2H" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weightattacking"
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 35 node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 35 node "standing"

$sequence "mounted" "anims/mounted.smd" fps 35

$sequence idle01 anims/idle01 loop frames 0 358 fixuploop -15 0 activity ACT_IDLE 1 node "standing"
$sequence "merch_idle" anims/idle01 loop frames 0 358 fixuploop -15 0 activity ACT_INF_NPC_IDLE 1

$sequence "monster_idle_angry" {
	"anims/aoc_idle_sword.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

// walking, no weapon
$animation a_WalkS anims/WalkS loop LX LY startloop 0 rotateto -180 {
	alignto idle01
	// ikrule lfoot footstep 0 range  5 11 25 30
	// ikrule rfoot footstep 1 range 22 28  6 11
}
$animation a_WalkSE anims/WalkSE loop LX LY startloop 0 rotateto -135 {
	alignto idle01
	// ikrule lfoot footstep 0 range  5  8 22 27
	// ikrule rfoot footstep 1 range 20 25 6 11
}
$animation a_WalkE anims/WalkE loop LX LY startloop 0 rotateto -90 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2  9 19 28
	// ikrule rfoot footstep 1 range 19 24  4  8
}
$animation a_WalkNE anims/WalkNE loop LX LY startloop 0 rotateto -45 {
	alignto idle01
	// ikrule lfoot footstep 0 range  4 11 23  0
	// ikrule rfoot footstep 1 range 18 25  8 13
}
$animation a_WalkN anims/WalkN loop LX LY startloop 0 rotateto 0 {
	alignto idle01
	// ikrule lfoot footstep 0 range  4 10 19 25
	// ikrule rfoot footstep 1 range 18 26 3 10
}
$animation a_WalkNW anims/WalkNW loop LX LY startloop 0 rotateto 45 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2  9 21 27
	// ikrule rfoot footstep 1 range 18 25  7 13
}
$animation a_WalkW anims/WalkW loop LX LY startloop 0 rotateto 90 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2 11 22 28
	// ikrule rfoot footstep 1 range 18 27  6 13
}
$animation a_WalkSW anims/WalkSW loop LX LY startloop 0 rotateto 135 {
	alignto idle01
	// ikrule lfoot footstep 0 range  2 10 18 25
	// ikrule rfoot footstep 1 range 16 22  7 12
}

$sequence walk_all {
	a_walkS a_walkSE a_walkE a_walkNE a_walkN a_walkNW a_walkW a_walkSW a_walkS
	blendwidth 9 blend move_yaw -180 180 ACT_WALK 1 node "walking"
}

$animation a_RunS anims/RunS loop LX LY startloop 0 rotateto -180 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 9 12 ..
	// ikrule rfoot footstep 1 range .. 0 3 ..
}
$animation a_RunSE anims/RunSE loop LX LY startloop 0 rotateto -135 fps 29 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 11 ..
	// ikrule rfoot footstep 1 range .. 17 1 ..
}
$animation a_RunE anims/RunE loop LX LY startloop 0 rotateto -90 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 9 ..
	// ikrule rfoot footstep 1 range .. 14 0 ..
}
$animation a_RunNE anims/RunNE loop LX LY startloop 0 rotateto -45 fps 29 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 6 10 ..
	// ikrule rfoot footstep 1 range .. 17 19 ..
}
$animation a_RunN anims/RunN loop LX LY startloop 0 rotateto 0 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 8 10 ..
	// ikrule rfoot footstep 1 range .. 17 1 ..
}
$animation a_RunNW anims/RunNW loop LX LY startloop 0 rotateto 45 fps 28 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 9 11 ..
	// ikrule rfoot footstep 1 range .. 18 1 ..
}
$animation a_RunW anims/RunW loop LX LY startloop 0 rotateto 90 fps 32 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 7 9 ..
	// ikrule rfoot footstep 1 range .. 16 0 ..
}
$animation a_RunSW anims/RunSW loop LX LY startloop 0 rotateto 135 fps 31 {
	alignto idle01
	// ikrule lfoot footstep 0 range .. 8 11 ..
	// ikrule rfoot footstep 1 range .. 16 1 ..
}

$sequence run_all {
	a_runS a_runSE a_runE a_runNE a_runN a_runNW a_runW a_runSW a_runS
	blendwidth 9 blend move_yaw -180 180 ACT_RUN 1 node "running"
}

// swimming
$sequence swim_idle anims/swim_idle loop frames 0 58 fixuploop -15 0 activity ACT_SWIM_IDLE 1 node "standing" fps 34

$animation a_SwimS anims/SwimS loop LX LY startloop 0 rotateto -180 {
	alignto swim_idle
}
$animation a_SwimSE anims/SwimSE loop LX LY startloop 0 rotateto -135 {
	alignto swim_idle
}
$animation a_SwimE anims/SwimE loop LX LY startloop 0 rotateto -90 {
	alignto swim_idle
}
$animation a_SwimNE anims/SwimNE loop LX LY startloop 0 rotateto -45 {
	alignto swim_idle
}
$animation a_SwimN anims/SwimN loop LX LY startloop 0 rotateto 0 {
	alignto swim_idle
}
$animation a_SwimNW anims/SwimNW loop LX LY startloop 0 rotateto 45 {
	alignto swim_idle
}
$animation a_SwimW anims/SwimW loop LX LY startloop 0 rotateto 90 {
	alignto swim_idle
}
$animation a_SwimSW anims/SwimSW loop LX LY startloop 0 rotateto 135 {
	alignto swim_idle
}

$sequence swim_all {
	a_SwimS a_SwimSE a_SwimE a_SwimNE a_SwimN a_SwimNW a_SwimW a_SwimSW a_SwimS
	blendwidth 9 blend move_yaw -180 180 ACT_SWIM 1 node "running"
}

$sequence "unarmed_idle" {
	"anims/unarmed_idle.smd"
	activity "ACT_INF_UNARMED_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

$sequence "knockdown" {
	"anims\knockdown.smd"
	activity "ACT_INF_KNOCKDOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 26
}

$sequence "work_mining" {
	"anims\mining.smd"
	activity "ACT_INF_WORK_MINING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	//frame 10 40 << old anim started and ended in idle, skip those frames.
}

$sequence "work_blacksmithing_01" {
	"anims\blacksmithing.smd"
	activity "ACT_INF_WORK_BLACKSMITH_LONG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "work_blacksmithing_02" {
	"anims\blacksmithing.smd"
	activity "ACT_INF_WORK_BLACKSMITH_SHORT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	frame 0 28
}

$sequence "preview" {
	"anims/preview.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// SpellCast

$sequence "cast_start" {
	"anims/cast_start.smd"
	activity "ACT_INF_MAGIC_CAST_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weightattacking"
}

$sequence "cast_loop" {
	"anims/cast_loop.smd"
	activity "ACT_INF_MAGIC_CAST_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_end" {
	"anims/cast_end.smd"
	activity "ACT_INF_MAGIC_CAST_END" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_start_instant" {
	"anims/cast_start_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_START" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weightattacking"
}

$sequence "cast_loop_instant" {
	"anims/cast_loop_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "weightattacking"
}

$sequence "cast_end_instant" {
	"anims/cast_end_instant.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weightattacking"
}
