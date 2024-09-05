
$modelname "characters/npc/snake01.mdl"
$scale 0.50

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 5.332 -0.418 11.442
$eyeposition 0 0 35

$cdmaterials "models/characters/npc/snake/"

$texturegroup "skinfamilies"
{
	{ "snake01" }
	{ "snake02" }
}

$cbox 0 0 0 0 0 0
$bbox -130.067 -31.239 -10.755 17.189 35.93 74.85

$attachment "eyes" "ValveBiped.bone17" 5.00 -1.00 0.00 rotate 0 0 90

$weightlist "weightattacking" {
	"ValveBiped.bone9" 1
	"ValveBiped.bone4" 1
	"ValveBiped.hisspart" 1
	"ValveBiped.bone2" 1
	"ValveBiped.bone1" 1
	"ValveBiped.bone20" 1
	"ValveBiped.null" 0
	"ValveBiped.null1" 0
	"ValveBiped.null2" 0
	"ValveBiped.null3" 0
	"ValveBiped.null4" 0
	"ValveBiped.null5" 0
	"ValveBiped.null6" 0
	"ValveBiped.null7" 0
	"ValveBiped.null8" 0
	"ValveBiped.null9" 0
	"ValveBiped.null10" 0
	"ValveBiped.null11" 0
	"ValveBiped.null12" 0
	"ValveBiped.null13" 0
	"ValveBiped.szaj_also" 1
	"ValveBiped.bone" 1
	"ValveBiped.bone17" 1
	"ValveBiped.bone18" 1
	"ValveBiped.bone19" 1
}

$sequence "idle01" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "walk" {
	"crawl.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
	walkframe 46 LX LY
}

$sequence "run" {
	"crawl.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 50
	loop
	walkframe 46 LX LY
}

$sequence "attack01" {
	"attack.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//walkframe 56 LX LY
	weightlist "weightattacking"
}

$sequence "attack02" {
	"attack.smd"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//walkframe 56 LX LY
	weightlist "weightattacking"
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 21
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 30
