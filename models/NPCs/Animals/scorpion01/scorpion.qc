
$modelname "characters/npc/scorpion01.mdl"

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 0 0 0 scorpion
$eyeposition 0 0 20

$texturegroup "skinfamilies"
{
	{ "scorpion01" }
	{ "scorpion02" }
	{ "scorpion03" }
	{ "scorpion04" }
}

$cdmaterials "models/characters/npc/scorpion/"
$attachment "eyes" "head" 0.00 25.00 0.00 rotate -44 0 0

$sequence "idle01" {
	"anims/idle1.smd"
	activity "ACT_IDLE" 2
	fadein 1
	fadeout 1
	fps 7
}

$sequence "idle02" {
	"anims/idle2.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 7
}

$sequence "idle03" {
	"anims/idle3.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 25
}

$animation a_bite "anims/mod.smd"

$animation g_bite01 "anims/attack1.smd" subtract a_bite 0
$animation g_bite02 "anims/attack2.smd" subtract a_bite 0
$animation g_bite03 "anims/attack3.smd" subtract a_bite 0
$animation g_bite04 "anims/attack4.smd" subtract a_bite 0

$sequence "attack01" {
	"g_bite01"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack01_stab" {
	"g_bite01"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack02" {
	"g_bite02"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack02_stab" {
	"g_bite02"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack03" {
	"g_bite03"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack03_stab" {
	"g_bite03"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack04" {
	"g_bite04"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack04_stab" {
	"g_bite04"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "walk" {
	"anims/walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "run" {
	"anims/run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 6 LX LY
}

$sequence "ragdoll" {
	"anims/mod.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 30
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 30

$collisionjoints "phy.smd"
{
	$mass 25
	$inertia 10
	$damping 1
	$rotdamping 2.5
	$rootbone "root"
}
