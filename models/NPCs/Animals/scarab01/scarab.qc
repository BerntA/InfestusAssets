
$modelname "characters/npc/scarab01.mdl"

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition -0.59 -0.099 7.166
$eyeposition 0 0 16

$cdmaterials "models/characters/npc/scarab/"

$cbox 0 0 0 0 0 0
$bbox -8.83 -9.273 -0.617 10.559 9.306 7.37

$attachment "eyes" "bone17" 3.00 0.00 1.00 rotate 0 0 0

$sequence "idle01" {
	"idle01.smd"
	activity "ACT_IDLE" 2
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle02" {
	"idle02.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "walk01" {
	"run01.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 34 LX LY
}

$sequence "run01" {
	"run01.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 34 LX LY
}

$sequence "turnleft" {
	"turnleft.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "turnright" {
	"turnright.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack01" {
	"attack01.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

// { event AE_HEADCRAB_JUMP_TELEGRAPH 0 "" }
// { event AE_HEADCRAB_JUMPATTACK 5 "" }

$sequence "death" "death.smd" activity ACT_INF_DEATH 1 fps 35
$sequence "death_idle" "death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 30

$collisionjoints "phy.smd"
{
	$mass 5
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "
}
