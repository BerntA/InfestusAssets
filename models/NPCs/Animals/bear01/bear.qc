
$modelname "characters/npc/bear01.mdl"

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 0 0 0 bear
$eyeposition 0 0 40

$cdmaterials "models/characters/npc/bear/"
$attachment "eyes" "mouth_top" 0.00 0.00 -7.00 rotate 45 -90 -90

$texturegroup "skinfamilies"
{
	{ "bear01" "bear01_hair" }
	{ "bear02" "bear02_hair" }
	{ "bear03" "bear03_hair" }
}

$weightlist "attacking_left" {
	"root" "0"
	"bear" "0"
	"body_front" "1"
	"neck" "1"
	"head" "1"
	"mouth_top" "1"
	"mouth_bottom" "1"
	"ear_L" "1"
	"ear_R" "1"
	"leg1_front_L" "1"
	"leg2_front_L" "1"
	"leg1_front_R" "0"
	"leg2_front_R" "0"
	"body_back" "0"
	"tail" "0"
	"leg1_back_L" "0"
	"leg2_back_L" "0"
	"leg1_back_R" "0"
	"leg2_back_R" "0"
	"leg_front_IK_L" "1"
	"leg3_front_L" "1"
	"leg_back_IK_L" "0"
	"leg3_back_L" "0"
	"leg_front_IK_R" "0"
	"leg3_front_R" "0"
	"leg_back_IK_R" "0"
	"leg3_back_R" "0"
}

$weightlist "attacking_right" {
	"root" "0"
	"bear" "0"
	"body_front" "1"
	"neck" "1"
	"head" "1"
	"mouth_top" "1"
	"mouth_bottom" "1"
	"ear_L" "1"
	"ear_R" "1"
	"leg1_front_L" "0"
	"leg2_front_L" "0"
	"leg1_front_R" "1"
	"leg2_front_R" "1"
	"body_back" "0"
	"tail" "0"
	"leg1_back_L" "0"
	"leg2_back_L" "0"
	"leg1_back_R" "0"
	"leg2_back_R" "0"
	"leg_front_IK_L" "0"
	"leg3_front_L" "0"
	"leg_back_IK_L" "0"
	"leg3_back_L" "0"
	"leg_front_IK_R" "1"
	"leg3_front_R" "1"
	"leg_back_IK_R" "0"
	"leg3_back_R" "0"
}

$sequence "idle01" {
	"anims/idle1.smd"
	activity "ACT_IDLE" 3
	fadein 1
	fadeout 1
	fps 15
}

$sequence "idle02" {
	"anims/idle2.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 15
}

$sequence "idle03" {
	"anims/idle3.smd"
	activity "ACT_IDLE" 2
	fadein 1
	fadeout 1
	fps 24
}

$sequence "idle04" {
	"anims/idle4.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 24
}

$sequence "idle_combat" {
	"anims/idle1.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 1
	fadeout 1
	fps 15
}

$animation a_bite "anims/mod.smd"
$animation g_bite "anims/attack_F.smd" subtract a_bite 0

$sequence "attack_stab" {
	"g_bite"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	delta
}

$sequence "attack_right" {
	"anims/attack_L.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "attacking_right"
}

$sequence "attack_left" {
	"anims/attack_R.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	weightlist "attacking_left"
}

$sequence "walk" {
	"anims/walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 10 LX LY
}

$sequence "run" {
	"anims/run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 10 LX LY
}

$sequence "ragdoll" {
	"anims/ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "anims/death_l.smd" activity ACT_INF_DEATH 1 fps 30
$sequence "death_idle" "anims/death_l_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 30

$collisionjoints "phy.smd"
{
	$mass 100
	$inertia 10
	$damping 1
	$rotdamping 2.5
	$rootbone "root"
}
