$modelname "characters/npc/turtlelord.mdl"

$bodygroup "body"
{
	studio "turtlelord.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 0.968 0.226 3.451

$cdmaterials "models/characters/npc/turtle/"

$cbox 0 0 0 0 0 0
$bbox -6.378 -6.669 -0.028 5.926 8.604 6.93
$eyeposition 0 0 16

$sequence "idle" {
	"anims/turtle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$animation "a_walk" "anims/turtle_walk.smd" {
	fps 24
	loop
	LX LY
}

$sequence "walk" {
	"a_walk"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "run" {
	"a_walk"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "attack" {
	"anims/turtle_jump.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event AE_PARASITE_JUMP_TELEGRAPH 0 "" }
	{ event AE_PARASITE_JUMPATTACK 5 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"anims/turtle_idle.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "phys.smd"
{
	$mass 5
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone "root"

	$jointconstrain "Leg_L" x limit -37 12 1
	$jointconstrain "Leg_L" y limit -39 46 1
	$jointconstrain "Leg_L" z limit -44 46 1

	$jointconstrain "Leg_R" x limit -30 19 1
	$jointconstrain "Leg_R" y limit -39 47 1
	$jointconstrain "Leg_R" z limit -44 46 1

	$jointconstrain "Arm_R" x limit 0 0 0
	$jointconstrain "Arm_R" y limit 0 0 0
	$jointconstrain "Arm_R" z limit -84 39 1

	$jointconstrain "Arm_L" x limit 0 0 0
	$jointconstrain "Arm_L" y limit 0 0 0
	$jointconstrain "Arm_L" z limit -70 48 1
	
	$noselfcollisions
}
