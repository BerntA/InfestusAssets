$modelname "characters/npc/wolf01.mdl"

$scale 0.75
$model "studio" "mdl_creature_whtwolf_reference.smd"
$surfaceprop "flesh"
$cdmaterials "models/characters/npc/wolf/"

$texturegroup "skinfamilies"
{
	{ "wolf01"  }
	{ "wolf02"  }
	{ "wolf03"  }
}

$eyeposition -0.000 -0.000 25.000
$poseparameter move_yaw -180.00 180.00 wrap
$attachment "eyes" "JawConnect" 2.00 5.00 0.00 rotate -0 180 -180

$ikchain "frfoot" "FrontRightPaw" Z 0
$ikchain "flfoot" "FrontLeftPaw" Z 0
$ikchain "brfoot" "BackRightPaw01" Z 0
$ikchain "blfoot" "BackLeftPaw" Z 0

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 fps 40
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 fps 40
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 fps 40
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 fps 40
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 fps 40
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  fps 40
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 fps 40
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 fps 40

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 fps 40
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 fps 40
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 fps 40
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 fps 40
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 fps 40
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  fps 40
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 fps 40
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 fps 40

$sequence "idle01" {
	"anims\idle01.smd"
	activity "ACT_IDLE" 2
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle02" {
	"anims\idle02.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle03" {
	"anims\idle03.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 8
	loop
}

$sequence "run" {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_RUN" 1	
}

$sequence "walk" {
	a_WalkS a_WalkSE a_WalkE
	a_WalkNE a_WalkN a_WalkNW
	a_WalkW a_WalkSW a_WalkS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_WALK" 1	
}

$animation a_bite "anims\bite.smd"
$animation g_bite "anims\bite.smd" subtract a_bite 0

$sequence "bite01" {
	"g_bite"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 34
	delta
}

$sequence "bite02" {
	"g_bite"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 34
	delta
}

$sequence "ragdoll" {
	"anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 70
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70

$collisionjoints "mdl_creature_whtwolf_physics.smd"
{
	$mass 40
	$inertia 7
	$damping 1
	$rotdamping 2.5
	$rootbone "spine1"

	$jointconstrain "Tail1" x limit 0 0 0
	$jointconstrain "Tail1" y limit -21 17 0
	$jointconstrain "Tail1" z limit -21 0 0

	$jointconstrain "Tail2" x limit 0 0 0
	$jointconstrain "Tail2" y limit -21 17 0
	$jointconstrain "Tail2" z limit -21 0 0

	$jointconstrain "Tail3" x limit 0 0 0
	$jointconstrain "Tail3" y limit -21 17 0
	$jointconstrain "Tail3" z limit -21 0 0

	$jointconstrain "BackLeftThigh" x limit -30 19 0
	$jointconstrain "BackLeftThigh" y limit -1 1 0
	$jointconstrain "BackLeftThigh" z limit -15 19 0

	$jointconstrain "BackLeftShin" x limit -21 9 0
	$jointconstrain "BackLeftShin" y limit -1 1 0
	$jointconstrain "BackLeftShin" z limit -30 30 0

	$jointconstrain "BackRightThigh01" x limit -30 19 0
	$jointconstrain "BackRightThigh01" y limit -1 1 0
	$jointconstrain "BackRightThigh01" z limit -15 19 0

	$jointconstrain "BackRightShin01" x limit -21 9 0
	$jointconstrain "BackRightShin01" y limit -1 1 0
	$jointconstrain "BackRightShin01" z limit -30 30 0

	$jointconstrain "Tail4" x limit 0 0 0
	$jointconstrain "Tail4" y limit -21 17 0
	$jointconstrain "Tail4" z limit -21 0 0

	$jointconstrain "FrontLeftShin" x limit -15 15 0
	$jointconstrain "FrontLeftShin" y limit -37 32 0
	$jointconstrain "FrontLeftShin" z limit -28 1 0

	$jointconstrain "Neck" x limit -1 1 0
	$jointconstrain "Neck" y limit -30 19 0
	$jointconstrain "Neck" z limit -8 17 0

	$jointconstrain "FrontRightShin" x limit -15 15 0
	$jointconstrain "FrontRightShin" y limit -37 32 0
	$jointconstrain "FrontRightShin" z limit -39 -1 0
}
