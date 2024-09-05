
$modelname "characters/npc/beetle01.mdl"
$scale 1.0

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition -0.05 4.723 32.377
$eyeposition 0 0 20

$cdmaterials "models/characters/npc/beetle/"

$texturegroup "skinfamilies"
{
	{ "beetle01" }
	{ "beetle02" }
	{ "beetle03" }
}

$cbox 0 0 0 0 0 0
$bbox -105.31 -76.971 -5.118 95.865 76.872 69.872

$attachment "eyes" "IRig_Root" 30.00 0.00 0.00 rotate 0 0 0

$sequence "idle01" {
	"idle01.smd"
	activity "ACT_IDLE" 2
	fadein 1
	fadeout 1
	fps 7
}

$sequence "idle02" {
	"idle02.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 7
}

$sequence "idle03" {
	"idle03.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 25
}

$sequence "attack01" {
	"attack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	walkframe 5 LX LY
	walkframe 15 LX LY
}

$sequence "walk" {
	"walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 20 LX LY
}

$sequence "run" {
	"run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "idle01.smd" activity ACT_INF_DEATH 1 fps 30
$sequence "death_idle" "idle01.smd" activity ACT_INF_DEATH_IDLE 1 fps 30

$collisionjoints "phy.smd"
{
	$mass 81
	$inertia 10
	$damping 1
	$rotdamping 2.5
	$rootbone "IRig_Root"

	$jointconstrain "IRig_RFTop" x limit -37 19 0
	$jointconstrain "IRig_RFTop" y limit -21 23 0
	$jointconstrain "IRig_RFTop" z limit -30 32 0

	$jointconstrain "IRig_LFTop" x limit -37 19 0
	$jointconstrain "IRig_LFTop" y limit -21 23 0
	$jointconstrain "IRig_LFTop" z limit -30 32 0

	$jointconstrain "IRig_LFBase" x limit 0 0 0
	$jointconstrain "IRig_LFBase" y limit -53 23 0
	$jointconstrain "IRig_LFBase" z limit -59 32 0

	$jointconstrain "IRig_RMTop" x limit -37 19 0
	$jointconstrain "IRig_RMTop" y limit -21 23 0
	$jointconstrain "IRig_RMTop" z limit -30 32 0

	$jointconstrain "IRig_RMBase" x limit 0 0 0
	$jointconstrain "IRig_RMBase" y limit -53 23 0
	$jointconstrain "IRig_RMBase" z limit -59 32 0

	$jointconstrain "IRig_LMTop" x limit -37 19 0
	$jointconstrain "IRig_LMTop" y limit -21 23 0
	$jointconstrain "IRig_LMTop" z limit -30 32 0

	$jointconstrain "IRig_LMBase" x limit 0 0 0
	$jointconstrain "IRig_LMBase" y limit -53 23 0
	$jointconstrain "IRig_LMBase" z limit -59 32 0

	$jointconstrain "IRig_LBTop" x limit -37 19 0
	$jointconstrain "IRig_LBTop" y limit -21 23 0
	$jointconstrain "IRig_LBTop" z limit -30 32 0

	$jointconstrain "IRig_LBBase" x limit 0 0 0
	$jointconstrain "IRig_LBBase" y limit -53 23 0
	$jointconstrain "IRig_LBBase" z limit -59 32 0

	$jointconstrain "IRig_RBTop" x limit -37 19 0
	$jointconstrain "IRig_RBTop" y limit -21 23 0
	$jointconstrain "IRig_RBTop" z limit -30 32 0

	$jointconstrain "IRig_RBBase" x limit 0 0 0
	$jointconstrain "IRig_RBBase" y limit -53 23 0
	$jointconstrain "IRig_RBBase" z limit -59 32 0

	$jointconstrain "IRig_TailBase" x limit 0 0 0
	$jointconstrain "IRig_TailBase" y limit -44 39 0
	$jointconstrain "IRig_TailBase" z limit 0 0 0

	$jointconstrain "IRig_TailTip" x limit 0 0 0
	$jointconstrain "IRig_TailTip" y limit -48 37 0
	$jointconstrain "IRig_TailTip" z limit 0 0 0

	$jointconstrain "IRig_RFBase" x limit 0 0 0
	$jointconstrain "IRig_RFBase" y limit -53 23 0
	$jointconstrain "IRig_RFBase" z limit -59 32 0

	$jointconstrain "IRig_RClaw" x limit 0 0 0
	$jointconstrain "IRig_RClaw" y limit -12 10 0
	$jointconstrain "IRig_RClaw" z limit 1 23 0

	$jointconstrain "IRig_LClaw" x limit 0 0 0
	$jointconstrain "IRig_LClaw" y limit -8 8 0
	$jointconstrain "IRig_LClaw" z limit -21 8 0
}
