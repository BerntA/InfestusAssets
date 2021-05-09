
$modelname "characters/npc/rat01.mdl"
$scale 5

$bodygroup "body"
{
	studio "ref.smd"
}

$bodygroup "helm"
{
	blank
	studio "crown.smd"	
}

$poseparameter move_yaw -180.00 180.00 wrap
$surfaceprop "flesh"
$contents "solid"
$illumposition 28.57 -19.392 -4.063
$eyeposition 0 -1.152 0.02
$cdmaterials "models/characters/npc/rat/"
$cdmaterials "models/items/helmets/plate/"

$attachment "eyes" "Bip01-Head" 11.00 -4.00 0.00 rotate 0 0 90

// 10.6 dist diag 

$cbox 0 0 0 0 0 0
$bbox -10.847 -4.435 -0.042 8.585 4.231 5.56

$sequence "idle1" {
	"idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "idle2" {
	"idle02.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$animation a_bite "anims/attack_bite.smd"
$animation a_spin "anims/attack_spin.smd"

$animation g_bite "anims/attack_bite.smd" subtract a_bite 0
$animation g_spin "anims/attack_spin.smd" subtract a_spin 0

$sequence melee_01 "g_bite" ACT_MELEE_ATTACK1 1 fps 25.00 delta
$sequence melee_02 "g_spin" ACT_MELEE_ATTACK1 1 fps 25.00 delta

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 fps 12 { alignto idle1 }
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 fps 15 { alignto idle1 }
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 fps 15 { alignto idle1 }
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 fps 15 { alignto idle1 }
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 fps 18 { alignto idle1 }
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45 fps 15  { alignto idle1 }
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 fps 15 { alignto idle1 }
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 fps 15 { alignto idle1 }

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 

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

$ikchain "foot1" "Bip01-L-Hand" Z 0
$ikchain "foot2" "Bip01-R-Hand" Z 0
$ikchain "foot3" "Bip01-L-Foot" Z 0
$ikchain "foot4" "Bip01-R-Foot" Z 0

$collisionjoints "physics.smd"
{
	$mass 2.0
	$inertia 5
	$damping 0.2
	$rotdamping 10.5
	$rootbone "bip01"

	$jointconstrain "Bip01-tail" x limit 0 0 0
	$jointconstrain "Bip01-tail" y limit -20 20 0
	$jointconstrain "Bip01-tail" z limit 10 20 0

	$jointconstrain "Bip01-tail1" x limit 0 0 0
	$jointconstrain "Bip01-tail1" y limit -15 15 0
	$jointconstrain "Bip01-tail1" z limit -21 10 0

	$jointconstrain "Bip01-tail2" x limit 0 0 0
	$jointconstrain "Bip01-tail2" y limit 0 0 0
	$jointconstrain "Bip01-tail2" z limit 0 0 0

	$jointconstrain "Bip01-tail3" x limit 0 0 0
	$jointconstrain "Bip01-tail3" y limit 0 0 0
	$jointconstrain "Bip01-tail3" z limit 0 15 0

	$jointconstrain "Bip01-Spine2" x limit -10 10 0
	$jointconstrain "Bip01-Spine2" y limit -15 15 0
	$jointconstrain "Bip01-Spine2" z limit -20 30 0

	$jointconstrain "Bip01-Head" x limit 0 0 0
	$jointconstrain "Bip01-Head" y limit -25 25 0
	$jointconstrain "Bip01-Head" z limit -30 50 0

	$jointconstrain "Bip01-tail4" x limit 0 0 0
	$jointconstrain "Bip01-tail4" y limit 0 0 0
	$jointconstrain "Bip01-tail4" z limit -5 0 0
}
