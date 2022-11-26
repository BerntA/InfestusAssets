
$modelname "characters/npc/giant01.mdl"
$poseparameter move_yaw -180.00 180.00 wrap

$model "studio" "giant01.smd" {
	eyeball "eye_right" "MBipHead" 0.000000 -6.374000 109.065994 "eye01" 5 1 "iris_unused" 5

	flexfile "giant01.vta" 
	{
		defaultflex frame 0
	}

	flexcontroller eyes range -35 35 "eyes_updown"
	flexcontroller eyes range -20 20 "eyes_rightleft"
}

$bodygroup helm 
{
	blank
	studio "helm_chaos.smd"
	studio "helm_ranged.smd"
	studio "helm_studded.smd"
	studio "helm_legion.smd"
	studio "helm_commander.smd"
	studio "crown.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition -1.099 -2.032 54.056
$eyeposition 0 0 109.006

$cdmaterials "models/characters/npc/giant/"
$cdmaterials "models/items/sovereign/"
$cdmaterials "models/items/helmets/cloth/"
$cdmaterials "models/items/helmets/plate/"
$cdmaterials "models/items/helmets/mail/"
$cdmaterials "models/characters/npc/smugglers/"
$cdmaterials "models/characters/npc/guard/"

$texturegroup "skinfamilies"
{
	{ "body01" "head01" "eye01"  }
	{ "body02" "head02" "eye02"  }
}

$attachment "eyes" "MBipHead" 11.32 0.25 5.75 rotate -88.99 0.11 -179.85
$attachment "forward" "MBipHead" 0 0 0 rotate -90 -180 0

$attachment "mainhand" "MBipRHand" 4.50 3.50 -2.35 rotate 90 90 0
$attachment "offhand" "MBipLHand" 4.00 2.70 1.60 rotate 90 90 0
$attachment "offhand_shield" "MBipLHand" 4.00 2.70 1.60 rotate 90 90 0

$attachment "back" "MBipNeck" 0.00 0.00 -17.50 rotate -80 -180 -180
$attachment "back_staff" "MBipNeck" 0.00 0.00 -17.50 rotate -80 180 -0
$attachment "back_crossbow" "MBipNeck" 0.00 0.00 -17.50 rotate -70 -180 90
$attachment "back_shield" "MBipNeck" -4.00 -7.50 -16.00 rotate 80 2 0

$attachment "waist_l" "MBipLThigh" 2.00 8.00 -1.75 rotate -0 90 115
$attachment "waist_r" "MBipRThigh" 2.00 7.60 1.75 rotate -0 -85 -75

$cbox 0 0 0 0 0 0
$bbox -39.003 -30.922 -7.147 43.068 28.725 115.258

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

// Look
$weightlist "head_look" {
	"MBipPelvis" "0"
	"MBipRThigh" "0"
	"MBipRCalf" "0"
	"MBipRFoot" "0"
	"MBipSpineBase" "0"
	"MBipSpineMid" "0"
	"MBipSpineTop" "0"
	"MBipLShoulder" "0"
	"MBipLBicep" "0"
	"MBipLForearm" "0"
	"MBipLHand" "0"
	"MBipRShoulder" "0"
	"MBipRBicep" "0"
	"MBipRForearm" "0"
	"MBipRHand" "0"
	"MBipNeck" "0.0"
	"MBipHead" "1.0"
	"MBipLThigh" "0"
	"MBipLCalf" "0"
	"MBipLFoot" "0"
}

$animation head_neutral "anims/look_up" frame 0 0 weightlist head_look

$animation head_up "anims/look_up" frame 1 1 subtract head_neutral 0 weightlist head_look
$animation head_down "anims/look_down" frame 1 1 subtract head_neutral 0 weightlist head_look

$animation head_right "anims/look_right" frame 1 1 subtract head_neutral 0 weightlist head_look
$animation head_left "anims/look_left" frame 1 1 subtract head_neutral 0 weightlist head_look

$sequence head_pitch { head_up head_down blend "head_pitch" -30 80 } delta autoplay hidden
$sequence head_yaw { head_right head_left blend "head_yaw" -80 80 } delta autoplay hidden
// END

$sequence "merch_idle" {
	"anims/idle_1.smd"
	activity "ACT_INF_NPC_IDLE" 1
	fadein 1
	fadeout 1
	fps 10
	loop
}

$sequence "idle01" {
	"anims/idle_1.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 10
	loop
}

$sequence "idle02" {
	"anims/idle_2.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 10
	loop
}

$sequence "idle03" {
	"anims/idle_3.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 10
	loop
}

$sequence "idle04" {
	"anims/idle_4.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 10
	loop
}

$weightlist "attacking" {
	"MBipPelvis" "0"
	"MBipRThigh" "0"
	"MBipRCalf" "0"
	"MBipRFoot" "0"
	"MBipSpineBase" "1"
	"MBipSpineMid" "1"
	"MBipSpineTop" "1"
	"MBipLShoulder" "1"
	"MBipLBicep" "1"
	"MBipLForearm" "1"
	"MBipLHand" "1"
	"MBipRShoulder" "1"
	"MBipRBicep" "1"
	"MBipRForearm" "1"
	"MBipRHand" "1"
	"MBipNeck" "1"
	"MBipHead" "1"
	"MBipLThigh" "0"
	"MBipLCalf" "0"
	"MBipLFoot" "0"
}

$weightlist "spin" {
	"MBipPelvis" "1"
	"MBipRThigh" "1"
	"MBipRCalf" "1"
	"MBipRFoot" "1"
	"MBipSpineBase" "1"
	"MBipSpineMid" "1"
	"MBipSpineTop" "1"
	"MBipLShoulder" "1"
	"MBipLBicep" "1"
	"MBipLForearm" "1"
	"MBipLHand" "1"
	"MBipRShoulder" "1"
	"MBipRBicep" "1"
	"MBipRForearm" "1"
	"MBipRHand" "1"
	"MBipNeck" "1"
	"MBipHead" "1"
	"MBipLThigh" "1"
	"MBipLCalf" "1"
	"MBipLFoot" "1"
}

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 { alignto ragdoll }
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 { alignto ragdoll }
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 { alignto ragdoll }
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 { alignto ragdoll }
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 { alignto ragdoll }
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  { alignto ragdoll }
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 { alignto ragdoll }
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 { alignto ragdoll }

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 fps 41 { alignto ragdoll }
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 fps 39 { alignto ragdoll }
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 fps 41 { alignto ragdoll }
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 fps 39 { alignto ragdoll }
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 fps 40 { alignto ragdoll }
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  fps 38 { alignto ragdoll }
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 fps 42 { alignto ragdoll }
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 fps 41 { alignto ragdoll }

$sequence "walk" {
	a_WalkS a_WalkSE a_WalkE
	a_WalkNE a_WalkN a_WalkNW
	a_WalkW a_WalkSW a_WalkS
	blendwidth 9
	blend "move_yaw" -180 180	
	"ACT_WALK" 1 
	node "walking"
}

$sequence "run" {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_RUN" 1 
	node "running"	
}

// Combat

// 2H Sharp

$sequence "attack_2h_sharp_slash1" {
	"anims/attack_2h_sharp_slash.smd"
	activity "ACT_INF_MELEE_2H_SLASH" 1
	fps 23
	weightlist "attacking"
}

$sequence "attack_2h_sharp_slash2" {
	"anims/attack_2h_sharp_slash.smd"
	activity "ACT_3PV_FLAMEBERGE_SLASH1" 1
	fps 23
	weightlist "attacking"
}

$sequence "attack_2h_sharp_smash1" {
	"anims/attack_2h_sharp_smash.smd"
	activity "ACT_3PV_FLAMEBERGE_SLASH2" 1
	fps 20
	weightlist "attacking"
}

$sequence "attack_2h_sharp_smash2" {
	"anims/attack_2h_sharp_smash.smd"
	activity "ACT_INF_MELEE_2H_SMASH" 1
	fps 20
	weightlist "attacking"
}

$sequence "attack_2h_sharp_stab1" {
	"anims/attack_2h_sharp_stab.smd"
	activity "ACT_3PV_FLAMEBERGE_STAB" 1
	fps 25
	weightlist "attacking"
}

$sequence "attack_2h_sharp_stab2" {
	"anims/attack_2h_sharp_stab.smd"
	activity "ACT_INF_MELEE_2H_STAB" 1
	fps 25
	weightlist "attacking"
}

// 2H blunt

$sequence "attack_2h_blunt_slash1" {
	"anims/attack_2h_blunt_slash.smd"
	activity "ACT_INF_MELEE_2H_BLUNT_SLASH" 1
	fps 22
	weightlist "attacking"
}

$sequence "attack_2h_blunt_slash2" {
	"anims/attack_2h_blunt_slash.smd"
	activity "ACT_3PV_WARHAMMER_SLASH1" 1
	fps 22
	weightlist "attacking"
}

$sequence "attack_2h_blunt_smash1" {
	"anims/attack_2h_blunt_smash.smd"
	activity "ACT_3PV_WARHAMMER_SLASH2" 1
	fps 20
	weightlist "attacking"
}

$sequence "attack_2h_blunt_smash2" {
	"anims/attack_2h_blunt_smash.smd"
	activity "ACT_INF_MELEE_2H_BLUNT_SMASH" 1
	fps 20
	weightlist "attacking"
}

$sequence "attack_2h_blunt_stab1" {
	"anims/attack_2h_blunt_stab.smd"
	activity "ACT_3PV_WARHAMMER_STAB" 1
	fps 22
	weightlist "attacking"
}

$sequence "attack_2h_blunt_stab2" {
	"anims/attack_2h_blunt_stab.smd"
	activity "ACT_INF_MELEE_2H_BLUNT_STAB" 1
	fps 22
	weightlist "attacking"
}

// 1H

$sequence "attack_1h_slash_r" {
	"anims/attack_1h_slash_r.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_slash_generic" {
	"anims/attack_1h_slash_r.smd"
	activity "ACT_3PV_SLASH" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_slash_l" {
	"anims/attack_1h_slash_l.smd"
	activity "ACT_INF_MELEE_1H_LEFT_SLASH" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_stab1" {
	"anims/attack_1h_stab.smd"
	activity "ACT_3PV_SHORTSWORD_STAB" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_stab2" {
	"anims/attack_1h_stab.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_STAB" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_smash1" {
	"anims/attack_1h_smash.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SMASH" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_smash2" {
	"anims/attack_1h_smash.smd"
	activity "ACT_3PV_SWORD_SLASH2" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_shield_slash" {
	"anims/attack_1h_slash_r.smd"
	activity "ACT_3PV_SWORDSHIELD_SLASH1" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_shield_smash" {
	"anims/shield_slam.smd"
	activity "ACT_3PV_SPEARSHIELD_SLASH2" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_shield_stab" {
	"anims/attack_1h_stab.smd"
	activity "ACT_3PV_SWORDSHIELD_STAB" 1
	fps 30
	weightlist "attacking"
}

$sequence "attack_1h_shield_slam" {
	"anims/shield_slam.smd"
	activity "ACT_3PV_KITE_SLASH2" 1
	fps 30
	weightlist "attacking"
}

// SPIN

$sequence "attack_1h_spin" {
	"anims/attack_1h_spin.smd"
	activity "ACT_INF_MELEE_1H_SPIN" 1
	fps 50
	weightlist "spin"
}

$sequence "attack_2h_sharp_spin" {
	"anims/attack_2h_sharp_spin.smd"
	activity "ACT_INF_MELEE_2H_SPIN" 1
	fps 50
	weightlist "spin"
}

$sequence "attack_2h_blunt_spin" {
	"anims/attack_2h_blunt_spin.smd"
	activity "ACT_INF_MELEE_2H_BLUNT_SPIN" 1
	fps 50
	weightlist "spin"
}

// CASTING

$sequence "cast_start" {
	"anims/2cast_start.smd"
	activity "ACT_INF_MAGIC_CAST_START" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "attacking"
}

$sequence "cast_loop" {
	"anims/2cast_idle.smd"
	activity "ACT_INF_MAGIC_CAST_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "cast_end" {
	"anims/2cast_end.smd"
	activity "ACT_INF_MAGIC_CAST_END" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "attacking"
}

$sequence "cast_start_instant" {
	"anims/1cast_instant_start.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_START" 1
	fadein 0.2
	fadeout 0.2
	fps 34
	weightlist "attacking"
}

$sequence "cast_loop_instant" {
	"anims/1cast_instant_idle.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	//weightlist "attacking" -- should not be defined as a gesture.
}

$sequence "cast_end_instant" {
	"anims/1cast_instant_end.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 34
	weightlist "attacking"
}

// BLOCKING

$sequence "block_1h" {
	"anims/block_1h.smd"
	activity "ACT_3PV_SWORD_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

$sequence "block_2h_sharp" {
	"anims/block_2h_sharp.smd"
	activity "ACT_3PV_FLAMEBERGE_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

$sequence "block_2h_blunt" {
	"anims/block_2h_blunt.smd"
	activity "ACT_3PV_WARHAMMER_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

$sequence "block_shield" {
	"anims/block_shield.smd"
	activity "ACT_3PV_KITE_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

// OTHER

$sequence "attack_ranged" {
	"anims/attack_ranged.smd"
	activity "ACT_3PV_aoc_LONGBOWSHOOT" 1
	fps 30
	weightlist "attacking"
}

$sequence "draw_right" {
	"anims/draw_1h.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_RIGHT" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_left" {
	"anims/draw_1h.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_both" {
	"anims/draw_both.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_shield_1" {
	"anims/draw_shield_1.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_BOTH_SHIELD" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_shield_2" {
	"anims/draw_shield_2.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_LEFT_SHIELD" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_ranged" {
	"anims/draw_ranged.smd"
	activity "ACT_COMBATANT_DRAW_RANGED" 1
	fps 25
	weightlist "attacking"
}

$sequence "draw_2h_sharp" {
	"anims/draw_2h_sharp.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_2H" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_right" {
	"anims/holster_1h.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_RIGHT" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_left" {
	"anims/holster_1h.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_LEFT" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_both" {
	"anims/holster_both.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_shield_1" {
	"anims/holster_shield_1.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_BOTH_SHIELD" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_shield_2" {
	"anims/holster_shield_2.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_LEFT_SHIELD" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_ranged" {
	"anims/holster_ranged.smd"
	activity "ACT_COMBATANT_HOLSTER_RANGED" 1
	fps 25
	weightlist "attacking"
}

$sequence "holster_2h_sharp" {
	"anims/holster_2h_sharp.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_2H" 1
	fps 25
	weightlist "attacking"
}

$sequence "idle_2h_sharp" {
	"anims/idle_2h_sharp.smd"
	activity "ACT_3PV_FLAMEBERGE_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle_2h_blunt" {
	"anims/idle_2h_blunt.smd"
	activity "ACT_3PV_WARHAMMER_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle_1h" {
	"anims/idle_1h.smd"
	activity "ACT_IDLE_SWORD" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle_ranged" {
	"anims/idle_ranged.smd"
	activity "ACT_3PV_aoc_LONGBOWIDLEUNDRAW" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

// Combat end

$sequence "standtosit" {
	"standtosit.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "sit" {
	"sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 3
}

$sequence "sittostand" {
	"sittostand.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 20 node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70 node "standing"
