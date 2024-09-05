
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

$sequence "idle" {
	"idle.smd"
	activity "ACT_IDLE" 3
	fadein 1
	fadeout 1
	fps 7
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

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 { alignto idle }
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 { alignto idle }
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 { alignto idle }
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 { alignto idle }
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 { alignto idle }
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  { alignto idle }
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 { alignto idle }
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 { alignto idle }

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
	"Run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	loop
	walkframe 30 LX LY
}

$sequence "attack01" {
	"Attack.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 32
	weightlist "attacking"
}

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

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 16 node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70 node "standing"
