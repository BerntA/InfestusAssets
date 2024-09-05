
$modelname "characters/npc/chicken01.mdl"

$bodygroup "studio"
{
	studio "chicken_01.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition -0.05 -0.16 5.237
$eyeposition 0 0 4
$cdmaterials "models/aoc_animated/"

$texturegroup "skinfamilies"
{
	{ "chicken_04" }
	{ "chicken_05" }
}

$cbox 0 0 0 0 0 0
$bbox -14.368 -28.283 -13.037 14.528 26.838 29.186

$sequence "Fly01" {
	"Fly01.smd"
	activity "ACT_FLY" 1
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
}

$sequence "Idle01" {
	"Idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Walk" {
	"Walk.smd"
	activity "ACT_WALK" 1
	walkframe 17 LX LY LZ
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Run" {
	"Run.smd"
	activity "ACT_RUN" 1
	walkframe 11 LX LY LZ
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Eat_A" {
	"Eat_A.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Eat_B" {
	"Eat_B.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Takeoff" {
	"Takeoff.smd"
	activity "ACT_CROW_TAKEOFF" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Soar" {
	"Soar.smd"
	activity "ACT_CROW_SOAR" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Land" {
	"Land.smd"
	activity "ACT_CROW_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Land_b" {
	"Land_b.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Hop" {
	"Hop.smd"
	activity "ACT_HOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Hop_B" {
	"Hop_B.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Idle01.smd
$animation a_idle "Takeoff.smd"
$animation g_slap "Takeoff.smd" subtract a_idle 0
$sequence melee_01 "g_slap" ACT_MELEE_ATTACK1 1 fps 20.00 delta

$sequence "death" "death.smd" activity ACT_INF_DEATH 1 fps 45
$sequence "death_idle" "death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 45
