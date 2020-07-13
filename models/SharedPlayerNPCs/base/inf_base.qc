$include "sharedbones.qci"

$modelname "characters/anims/shared.mdl"
$surfaceprop "flesh"
$contents "solid"
$cdmaterials "models/player/"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

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

// Right

$sequence "slash_1h_05_r" {
	"anims\aoc_slash_05.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "slash_1h_04_r" {
	"anims\aoc_slash_04.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "slash_1h_03_r" {
	"anims\aoc_slash_03.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "slash_1h_02_r" {
	"anims\aoc_slash_02.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "slash_1h_01_r" {
	"anims\aoc_slash_01.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "slash_1h_00_r" {
	"anims\aoc_doubleslash.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1
	weightlist "weights_aoc_stab.smd"
}

// Left

$sequence "slash_1h_00_l" {
	"anims\aoc_slash_05.smd"
	activity "ACT_INF_MELEE_1H_LEFT_SLASH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

// Special Attacks

// STAB 1H

$animation "a_stab_corrective" "anims\a_stab_1h_correction.smd" {
}

$animation "a_stab_1h" "anims\a_stab_1h.smd" {
	fps 32
	loop
	subtract "a_stab_corrective" 0
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
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

// DRAW Generic

$sequence "draw_1h_l" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_1h_l_shield" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_1h_r" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_1h_b" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_1h_b_shield" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_ranged" {
	"anims\draw_generic.smd"
	activity "ACT_COMBATANT_DRAW_RANGED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "draw_2h" {
	"anims\aoc_flamberge_draw.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_2H" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
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
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_1h_l_shield" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_LEFT_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_1h_r" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_1h_b" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_1h_b_shield" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH_SHIELD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_ranged" {
	"anims\holster_generic.smd"
	activity "ACT_COMBATANT_HOLSTER_RANGED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "holster_2h" {
	"anims\aoc_flamberge_holster.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_2H" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	weightlist "weights_aoc_stab.smd"
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 35 node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 35 node "standing"

$sequence "mounted" "anims/mounted.smd" fps 35

$sequence idle01 anims/idle01 loop frames 0 358 fixuploop -15 0 activity ACT_IDLE 1 node "standing"
$sequence "merch_idle" anims/idle01 loop frames 0 358 fixuploop -15 0 activity ACT_INF_NPC_IDLE 1

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
{ event 2051 9 }
{ event 2050 23 }
}