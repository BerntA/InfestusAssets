
$modelname "characters/npc/deer01.mdl"

$bodygroup "studio"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 3.389 -18.721 38.523
$eyeposition 0 0 50

$cdmaterials "models/characters/npc/deer/"

$cbox 0 0 0 0 0 0
$bbox -22.974 -16.342 -1.84 60.417 23.12 78.886

$attachment "eyes" "Head" 10.00 -5.00 0.00 rotate 0 -50 0

$sequence "idle01" {
	"idle01.smd"
	activity "ACT_IDLE" 2
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle02" {
	"idle02.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle03" {
	"idle03.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 8
	loop
}

$sequence "walk" {
	"walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
	walkframe 29 LX LY
}

$sequence "run" {
	"run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
	walkframe 29 LX LY
}

$sequence "attack01" {
	"attack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "death" "ragdoll.smd" activity ACT_INF_DEATH 1 fps 30
$sequence "death_idle" "ragdoll.smd" activity ACT_INF_DEATH_IDLE 1 fps 30

$collisionjoints "phy.smd"
{
	$mass 30
	$inertia 5
	$damping 1
	$rotdamping 2.5
	$rootbone "Root"

	$jointconstrain "RBkThigh2" x limit -53 -6 0
	$jointconstrain "RBkThigh2" y limit -1 3 0
	$jointconstrain "RBkThigh2" z limit -37 41 0

	$jointconstrain "LBkThigh2" x limit -53 -6 0
	$jointconstrain "LBkThigh2" y limit -1 3 0
	$jointconstrain "LBkThigh2" z limit -37 41 0

	$jointconstrain "LBkShin" x limit -1 -1 0
	$jointconstrain "LBkShin" y limit 1 1 0
	$jointconstrain "LBkShin" z limit -37 6 0

	$jointconstrain "RBkShin" x limit -1 -1 0
	$jointconstrain "RBkShin" y limit 1 1 0
	$jointconstrain "RBkShin" z limit -37 6 0

	$jointconstrain "RFrntThigh01" x limit -23 -6 0
	$jointconstrain "RFrntThigh01" y limit -15 1 0
	$jointconstrain "RFrntThigh01" z limit -39 37 0

	$jointconstrain "RFrnShin01" x limit -6 17 0
	$jointconstrain "RFrnShin01" y limit -1 17 0
	$jointconstrain "RFrnShin01" z limit -61 32 0

	$jointconstrain "RFrntThigh" x limit -23 -6 0
	$jointconstrain "RFrntThigh" y limit -15 1 0
	$jointconstrain "RFrntThigh" z limit -39 37 0

	$jointconstrain "RFrnShin" x limit -6 17 0
	$jointconstrain "RFrnShin" y limit -1 17 0
	$jointconstrain "RFrnShin" z limit -61 32 0

	$jointconstrain "Neck" x limit -12 10 0
	$jointconstrain "Neck" y limit -37 39 0
	$jointconstrain "Neck" z limit -30 26 0

	$jointconstrain "Head" x limit -17 17 0
	$jointconstrain "Head" y limit -12 10 0
	$jointconstrain "Head" z limit -8 10 0

	$jointconstrain "Tail" x limit -50 64 0
	$jointconstrain "Tail" y limit -68 39 0
	$jointconstrain "Tail" z limit -44 70 0
}
