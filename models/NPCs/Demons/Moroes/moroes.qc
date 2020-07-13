
$modelname "characters/npc/moroes.mdl"
$poseparameter move_yaw -180.00 180.00 wrap

$model "studio" "ref.smd" {
	eyeball "eye_right" "MBipHead" -1.429009 -4.454990 67.096995 "eyeball_r" 2 4 "iris_unused" 0.65
	eyeball "eye_left" "MBipHead" 1.387991 -4.454990 67.096996 "eyeball_l" 2 -4 "iris_unused" 0.65

	flexfile "mdl_npc41_lazarus_01.vta" 
	{
		defaultflex frame 0
	}

	flexcontroller eyes range -35 35 "eyes_updown"
	flexcontroller eyes range -20 20 "eyes_rightleft"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 0.681 3.061 36.758
$cdmaterials "models/characters/npc/moroes/"

$eyeposition 0.000 0.000 64.000

$attachment "eyes" "MBipHead" 5.7 0 3.46 rotate -88.69 0 180
$attachment "forward" "MBipHead" 0 0 0 rotate -90 -180 0

$attachment "mainhand" "MBipRHand" 5.20 0.50 0.95 rotate -90 -180 -90
$attachment "offhand" "MBipLHand" 6.00 -0.50 1.50 rotate 90 180 90

$attachment "waist_l" "MBipLThigh" 1.5 4.5 -0.75 rotate 180 -90 -65
$attachment "waist_r" "MBipRThigh" 1.5 -4.8 -0.75 rotate 180 -90 -65

$cbox 0 0 0 0 0 0
$bbox -19.812 -34.283 -3.762 13.689 35.644 77.279

$weightlist "attacking" {
	"MBipPelvis" "0"
	"MBipLThigh" "0"
	"MBipLCalf" "0"
	"MBipLFoot" "0"
	"MBipRThigh" "0"
	"MBipRCalf" "0"
	"MBipRFoot" "0"
	"MBipSpineBase" "1"
	"MBipSpineMid" "1"
	"MBipSpineTop" "1"
	"MBipNeck" "1"
	"MBipHead" "1"
	"MBipRShoulder" "1"
	"MBipRBicep" "1"
	"MBipRForearm" "1"
	"MBipRHand" "1"
	"MBipLShoulder" "1"
	"MBipLBicep" "1"
	"MBipLForearm" "1"
	"MBipLHand" "1"
}

$sequence "idle1" {
	"idle01.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 4
	loop
}

$sequence "idle2" {
	"idle02.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 7
	loop
}

$sequence "idle3" {
	"idle03.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle4" {
	"idle04.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle5" {
	"idle05.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle_engaged" {
	"anims/1h_idle.smd"
	activity "ACT_IDLE_SWORD" 1
	fps 3
	loop
}

$sequence "draw_right" {
	"anims/1h_draw.smd"
	activity "ACT_COMBATANT_DRAW_MELEE_1H_RIGHT" 1
	fps 18
	weightlist "attacking"
}

$sequence "holster_right" {
	"anims/1h_holster.smd"
	activity "ACT_COMBATANT_HOLSTER_MELEE_1H_RIGHT" 1
	fps 18
	weightlist "attacking"
}

$sequence "1h_attack_slash_r" {
	"anims/1h_slash.smd"
	activity "ACT_INF_MELEE_1H_RIGHT_SLASH" 1
	fps 18
	weightlist "attacking"
}

$sequence "attack_smash" {
	"anims/attack_smash.smd"
	activity "ACT_3PV_SWORD_SLASH2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

$sequence "attack_stab" {
	"anims/attack_smash.smd"
	activity "ACT_3PV_SHORTSWORD_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

// CASTING

$sequence "caststart" {
	"cast_start.smd"
	activity "ACT_INF_MAGIC_CAST_START" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	weightlist "attacking"
}

$sequence "castloop" {
	"cast_loop.smd"
	activity "ACT_INF_MAGIC_CAST_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "castend" {
	"cast_end.smd"
	activity "ACT_INF_MAGIC_CAST_END" 1
	fadein 0.2
	fadeout 0.2
	fps 10
	weightlist "attacking"
}

$sequence "caststart_instant" {
	"cast_start.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_START" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	weightlist "attacking"
}

$sequence "castloop_instant" {
	"cast_loop.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "castend_instant" {
	"cast_end.smd"
	activity "ACT_INF_MAGIC_CAST_INSTANT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	weightlist "attacking"
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

// 28.2842712475 dist diag

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 { alignto idle1 }
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 { alignto idle1 }
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 { alignto idle1 }
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 { alignto idle1 }
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 { alignto idle1 }
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  { alignto idle1 }
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 { alignto idle1 }
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 { alignto idle1 }

$animation a_RunS "anims/walk_s" loop LX LY startloop 0 rotateto -180 fps 56 { alignto idle1 }
$animation a_RunSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 fps 44 { alignto idle1 }
$animation a_RunE "anims/walk_e" loop LX LY startloop 0 rotateto -90 fps 56 { alignto idle1 }
$animation a_RunNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 fps 44 { alignto idle1 }
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 fps 55 { alignto idle1 }
$animation a_RunNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  fps 43 { alignto idle1 }
$animation a_RunW "anims/walk_w" loop LX LY startloop 0 rotateto 90 fps 57 { alignto idle1 }
$animation a_RunSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 fps 56 { alignto idle1 }

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

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 16 node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70 node "standing"

$ikchain "lfoot" "MBipLFoot" Z 0
$ikchain "rfoot" "MBipRFoot" Z 0

$ikchain "lhand" "MBipLHand" Z 0
$ikchain "rhand" "MBipRHand" Z 0

$collisionjoints "physics.smd"
{
	$mass 90
	$inertia 7
	$damping 2
	$rotdamping 2.5
	$rootbone "MBipPelvis"

	$jointconstrain "MBipSpineBase" x limit 0 0 0
	$jointconstrain "MBipSpineBase" y limit 0 0 0
	$jointconstrain "MBipSpineBase" z limit 0 0 0

	$jointconstrain "MBipSpineMid" x limit 0 0 0
	$jointconstrain "MBipSpineMid" y limit 0 0 0
	$jointconstrain "MBipSpineMid" z limit 0 0 0

	$jointconstrain "MBipSpineTop" x limit 0 0 0
	$jointconstrain "MBipSpineTop" y limit 0 0 0
	$jointconstrain "MBipSpineTop" z limit 0 0 0

	$jointconstrain "MBipRBicep" x limit -30 30 0.2
	$jointconstrain "MBipRBicep" y limit -95 84 0.2
	$jointconstrain "MBipRBicep" z limit -86 26 0.2

	$jointconstrain "MBipRForearm" x limit 0 0 0.2
	$jointconstrain "MBipRForearm" y limit 0 0 0.2
	$jointconstrain "MBipRForearm" z limit -149 4 0.2

	$jointconstrain "MBipLBicep" x limit -30 30 0.2
	$jointconstrain "MBipLBicep" y limit -95 84 0.2
	$jointconstrain "MBipLBicep" z limit -86 26 0.2

	$jointconstrain "MBipNeck" x limit 0 0 0
	$jointconstrain "MBipNeck" y limit 0 0 0
	$jointconstrain "MBipNeck" z limit 0 0 0

	$jointconstrain "MBipLForearm" x limit 0 0 0.2
	$jointconstrain "MBipLForearm" y limit 0 0 0.2
	$jointconstrain "MBipLForearm" z limit -149 4 0.2

	$jointconstrain "MBipRHand" x limit -60 60 0.2
	$jointconstrain "MBipRHand" y limit 0 0 0
	$jointconstrain "MBipRHand" z limit -57 70 0.2

	$jointconstrain "MBipHead" x limit -20 20 0.2
	$jointconstrain "MBipHead" y limit -25 25 0.2
	$jointconstrain "MBipHead" z limit -13 30 0.2

	$jointconstrain "MBipRThigh" x limit 0 0 0
	$jointconstrain "MBipRThigh" y limit 0 0 0
	$jointconstrain "MBipRThigh" z limit -97 10 0

	$jointconstrain "MBipRCalf" x limit 0 0 0
	$jointconstrain "MBipRCalf" y limit 0 0 0
	$jointconstrain "MBipRCalf" z limit -5 126 0

	$jointconstrain "MBipLHand" x limit -60 60 0.2
	$jointconstrain "MBipLHand" y limit 0 0 0
	$jointconstrain "MBipLHand" z limit -57 70 0.2

	$jointconstrain "MBipLThigh" x limit 0 0 0
	$jointconstrain "MBipLThigh" y limit 0 0 0
	$jointconstrain "MBipLThigh" z limit -97 10 0

	$jointconstrain "MBipLCalf" x limit 0 0 0
	$jointconstrain "MBipLCalf" y limit 0 0 0
	$jointconstrain "MBipLCalf" z limit -5 126 0

	$jointconstrain "MBipLFoot" x limit -28 12 0
	$jointconstrain "MBipLFoot" y limit -8 8 0
	$jointconstrain "MBipLFoot" z limit -26 21 0

	$jointconstrain "MBipRFoot" x limit 0 0 0
	$jointconstrain "MBipRFoot" y limit -25 6 0.2
	$jointconstrain "MBipRFoot" z limit -15 35 0.2
}
