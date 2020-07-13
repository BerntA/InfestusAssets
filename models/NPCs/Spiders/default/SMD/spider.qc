$modelname "characters/npc/spider01.mdl"

$model "studio" "ref.smd"
$surfaceprop "flesh"
$cdmaterials "models/characters/npc/spider/"

$eyeposition 0.000 11.55 18.000
$poseparameter move_yaw -180.00 180.00 wrap
$attachment "eyes" "Spine1" 0.00 11.50 0.00 rotate -0 90 -0

$ikchain "rfoot1" "Leg1RPart6" Z 0
$ikchain "lfoot1" "Leg1LPart6" Z 0

$ikchain "rfoot2" "Leg2RPart6" Z 0
$ikchain "lfoot2" "Leg2LPart6" Z 0

$ikchain "rfoot3" "Leg3RPart6" Z 0
$ikchain "lfoot3" "Leg3LPart6" Z 0

$ikchain "rfoot4" "Leg4RPart6" Z 0
$ikchain "lfoot4" "Leg4LPart6" Z 0

$weightlist "movement" {
	"Leg1LPart1" "1"
	"Leg1LPart2" "1"
	"Leg1LPart3" "1"
	"Leg1LPart4" "0.15"
	"Leg1LPart5" "0.25"
	"Leg1LPart6" "0.75"
	
	"Leg1RPart1" "1"
	"Leg1RPart2" "1"
	"Leg1RPart3" "1"
	"Leg1RPart4" "0.15"
	"Leg1RPart5" "0.25"
	"Leg1RPart6" "0.75"

	"Leg2LPart1" "1"
	"Leg2LPart2" "1"
	"Leg2LPart3" "1"
	"Leg2LPart4" "0.15"
	"Leg2LPart5" "0.25"
	"Leg2LPart6" "0.75"
	
	"Leg2RPart1" "1"
	"Leg2RPart2" "1"
	"Leg2RPart3" "1"
	"Leg2RPart4" "0.15"
	"Leg2RPart5" "0.25"
	"Leg2RPart6" "0.75"

	"Leg3LPart1" "1"
	"Leg3LPart2" "1"
	"Leg3LPart3" "1"
	"Leg3LPart4" "0.15"
	"Leg3LPart5" "0.25"
	"Leg3LPart6" "0.75"
	
	"Leg3RPart1" "1"
	"Leg3RPart2" "1"
	"Leg3RPart3" "1"
	"Leg3RPart4" "0.15"
	"Leg3RPart5" "0.25"
	"Leg3RPart6" "0.75"

	"Leg4LPart1" "1"
	"Leg4LPart2" "1"
	"Leg4LPart3" "1"
	"Leg4LPart4" "0.15"
	"Leg4LPart5" "0.25"
	"Leg4LPart6" "0.75"
	
	"Leg4RPart1" "1"
	"Leg4RPart2" "1"
	"Leg4RPart3" "1"
	"Leg4RPart4" "0.15"
	"Leg4RPart5" "0.25"
	"Leg4RPart6" "0.75"
	
	"Spine1" "1"
	"Tentacle1R" "1"
	"Tentacle2R" "1"
	"Tentacle3R" "1"
	"Tentacle1L" "1"
	//"Tentacle2L" "1"
	"Tentacle3L" "1"
	"Sting1R" "1"
	"Sting2R" "1"
	"Sting1L" "1"
	"Sting2L" "1"
	"Abdomen1" "1"
	"Root" "1"
}

$sequence "idle01" "anims\idle01.smd" activity "ACT_IDLE" 1 fps 24 loop node "standing" weightlist "movement"

$animation a_Idle "anims\idle01.smd" loop LX LY startloop 0 rotateto -180 {
	alignto idle01
	weightlist "movement"
}

$animation a_WalkS "anims/walk_s" loop LX LY startloop 0 rotateto -180 weightlist "movement" alignto idle01
$animation a_WalkSE "anims/walk_se" loop LX LY startloop 0 rotateto -135 weightlist "movement" alignto idle01
$animation a_WalkE "anims/walk_e" loop LX LY startloop 0 rotateto -90 weightlist "movement" alignto idle01
$animation a_WalkNE "anims/walk_ne" loop LX LY startloop 0 rotateto -45 weightlist "movement" alignto idle01
$animation a_WalkN "anims/walk_n" loop LX LY startloop 0 rotateto 0 weightlist "movement" alignto idle01
$animation a_WalkNW "anims/walk_nw" loop LX LY startloop 0 rotateto 45  weightlist "movement" alignto idle01
$animation a_WalkW "anims/walk_w" loop LX LY startloop 0 rotateto 90 weightlist "movement" alignto idle01
$animation a_WalkSW "anims/walk_sw" loop LX LY startloop 0 rotateto 135 weightlist "movement" alignto idle01

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 weightlist "movement" alignto idle01
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 weightlist "movement" alignto idle01
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 weightlist "movement" alignto idle01
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 weightlist "movement" alignto idle01
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 weightlist "movement" alignto idle01
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  weightlist "movement" alignto idle01
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 weightlist "movement" alignto idle01
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 weightlist "movement" alignto idle01

$sequence "walk" {
	a_WalkS a_WalkSE a_WalkE
	a_WalkNE a_WalkN a_WalkNW
	a_WalkW a_WalkSW a_WalkS
	blendwidth 9
	blend move_yaw -180 180
	blendcenter a_Idle
	ACT_WALK 1
	node "walking"
}

$sequence "run" {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend move_yaw -180 180
	blendcenter a_Idle
	ACT_RUN 1
	node "running"
}

$animation g_attack01 "anims\attack01.smd" subtract idle01 0 weightlist "movement"
$sequence "attack01" "g_attack01" activity "ACT_MELEE_ATTACK1" 1 fps 25 delta

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 30 weightlist "movement" node "standing"
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70 weightlist "movement" node "standing"

$collisionjoints "phy.smd" {
	$mass 20.00
	$inertia 5.00
	$damping 1.00
	$rotdamping 1.50
	$rootbone "root"

	$jointmassbias "spine1" 2.00
	$jointinertia "spine1" 4.00
	$jointrotdamping "spine1" 0.70
	
	$jointconstrain "spine1" x limit -3.00 3.00 0.00
	$jointconstrain "spine1" y limit -2.00 2.00 0.00
	$jointconstrain "spine1" z limit -3.00 4.00 0.00

	$jointconstrain "leg1rpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg1rpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg1rpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg1rpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg1rpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg1lpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg1lpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg2rpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg2rpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg2lpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg2lpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg4rpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg4rpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg4lpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg4lpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart5" z limit 0.00 0.00 0.00

	$jointconstrain "leg3rpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg3rpart6" z limit 0.00 0.00 0.00

	$jointconstrain "leg3lpart1" x limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart1" y limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart1" z limit 0.00 0.00 0.00

	$jointconstrain "leg3lpart2" x limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart2" y limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart2" z limit 0.00 0.00 0.00

	$jointconstrain "leg3lpart3" x limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart3" y limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart3" z limit 0.00 0.00 0.00

	$jointconstrain "leg3lpart4" x limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart4" y limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart4" z limit 0.00 0.00 0.00

	$jointconstrain "leg1rpart6" x limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart6" y limit 0.00 0.00 0.00
	$jointconstrain "leg1rpart6" z limit 0.00 0.00 0.00

	$jointconstrain "sting1l" x limit 0.00 0.00 0.00
	$jointconstrain "sting1l" y limit 0.00 0.00 0.00
	$jointconstrain "sting1l" z limit 0.00 0.00 0.00

	$jointconstrain "sting1r" x limit 0.00 0.00 0.00
	$jointconstrain "sting1r" y limit 0.00 0.00 0.00
	$jointconstrain "sting1r" z limit 0.00 0.00 0.00

	$jointconstrain "leg3lpart5" x limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart5" y limit 0.00 0.00 0.00
	$jointconstrain "leg3lpart5" z limit 0.00 0.00 0.00

	$jointconstrain "abdomen1" x limit -10.00 10.00 0.00
	$jointconstrain "abdomen1" y limit 0.00 0.00 0.00
	$jointconstrain "abdomen1" z limit -5.00 5.00 0.00
}
