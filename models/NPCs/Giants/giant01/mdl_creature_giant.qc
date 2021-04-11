
$modelname "monsters/mdl_creature_giant.mdl"

$bodygroup "studio"
{
	studio "mdl_creature_giant_giant.smd"
}
$model "studio" "mdl_creature_giant_giant_2.smd" {

	eyeball "eye_right" "MBipHead" 0.000000 -6.374000 109.065994 "tx_cyclops_eye01" 5 1 "iris_unused" 5

	flexfile "mdl_creature_giant_01.vta" 
	{
		defaultflex frame 0
	}

	flexcontroller eyes range -35 35 "eyes_updown"
	flexcontroller eyes range -20 20 "eyes_rightleft"
}


$surfaceprop "bsflesh"

$contents "solid"

$illumposition -1.099 -2.032 54.056

$eyeposition 0 0 109.006

$cdmaterials "monsters\"

$attachment "eyes" "MBipHead" 11.32 0.25 5.75 rotate -88.99 0.11 -179.85
$attachment "forward" "MBipHead" 0 0 0 rotate -90 -180 0

$cbox 0 0 0 0 0 0

$bbox -39.003 -30.922 -7.147 43.068 28.725 115.258


$sequence "walk" {
	"mdl_creature_giant_anim_@walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
	walkframe 30 LX LY
}

$sequence "Run" {
	"mdl_creature_giant_anim_@Run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	loop
	walkframe 30 LX LY
}

$sequence "idle" {
	"mdl_creature_giant_anim_@idle.smd"
	activity "ACT_IDLE" 3
	fadein 1
	fadeout 1
	fps 7
	loop
}

$sequence "Attack" {
	"mdl_creature_giant_anim_@Attack.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_MONSTER_MELEE_HIT1 10 "" }
	{ event AE_CL_PLAYSOUND 1 "sfx.SFX_Creature_Cyclops_Attack" }
	fadein 0.2
	fadeout 0.2
	fps 17
}

$sequence "standtosit" {
	"mdl_creature_giant_anim_@standtosit.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "sit" {
	"mdl_creature_giant_anim_@sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 3
}

$sequence "sittostand" {
	"mdl_creature_giant_anim_@sittostand.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
}

$sequence "ragdoll" {
	"mdl_creature_giant_anim_@ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	{ event AE_CL_PLAYSOUND 0 "sfx.SFX_Creature_Cyclops_Death" }
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "mdl_creature_giant_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 1
	$rotdamping 2.5
	$rootbone "MBipPelvis"


	$jointconstrain "MBipSpineBase" x limit 0 0 0
	$jointconstrain "MBipSpineBase" y limit 0 0 0
	$jointconstrain "MBipSpineBase" z limit 0 0 0

	$jointconstrain "MBipSpineTop" x limit 0 0 0
	$jointconstrain "MBipSpineTop" y limit 0 0 0
	$jointconstrain "MBipSpineTop" z limit 0 0 0

	$jointconstrain "MBipRBicep" x limit -30 30 0.2
	$jointconstrain "MBipRBicep" y limit -95 84 0.2
	$jointconstrain "MBipRBicep" z limit -86 26 0.2

	$jointconstrain "MBipNeck" x limit 0 0 0
	$jointconstrain "MBipNeck" y limit 0 0 0
	$jointconstrain "MBipNeck" z limit 0 0 0

	$jointconstrain "MBipLBicep" x limit -30 30 0.2
	$jointconstrain "MBipLBicep" y limit -95 84 0.2
	$jointconstrain "MBipLBicep" z limit -86 26 0.2

	$jointconstrain "MBipLForearm" x limit 0 0 0.2
	$jointconstrain "MBipLForearm" y limit 0 0 0.2
	$jointconstrain "MBipLForearm" z limit -149 4 0.2

	$jointconstrain "MBipLHand" x limit -60 60 0.2
	$jointconstrain "MBipLHand" y limit 0 0 0
	$jointconstrain "MBipLHand" z limit -57 70 0.2

	$jointconstrain "MBipRForearm" x limit 0 0 0.2
	$jointconstrain "MBipRForearm" y limit 0 0 0.2
	$jointconstrain "MBipRForearm" z limit -149 4 0.2

	$jointconstrain "MBipRHand" x limit -60 60 0.2
	$jointconstrain "MBipRHand" y limit 0 0 0
	$jointconstrain "MBipRHand" z limit -57 70 0.2

	$jointconstrain "MBipRThigh" x limit 0 0 0
	$jointconstrain "MBipRThigh" y limit 0 0 0
	$jointconstrain "MBipRThigh" z limit -97 32 0.2

	$jointconstrain "MBipRCalf" x limit 0 0 0.2
	$jointconstrain "MBipRCalf" y limit 0 0 0.2
	$jointconstrain "MBipRCalf" z limit -12 126 0.2

	$jointconstrain "MBipRFoot" x limit 0 0 0
	$jointconstrain "MBipRFoot" y limit -25 6 0.2
	$jointconstrain "MBipRFoot" z limit -15 35 0.2

	$jointconstrain "MBipLThigh" x limit 0 0 0
	$jointconstrain "MBipLThigh" y limit 0 0 0
	$jointconstrain "MBipLThigh" z limit -97 32 0.2

	$jointconstrain "MBipLCalf" x limit 0 0 0.2
	$jointconstrain "MBipLCalf" y limit 0 0 0.2
	$jointconstrain "MBipLCalf" z limit -12 126 0.2

	$jointconstrain "MBipLFoot" x limit -28 12 0
	$jointconstrain "MBipLFoot" y limit -8 8 0
	$jointconstrain "MBipLFoot" z limit -26 21 0

	$jointconstrain "MBipHead" x limit -20 20 0.2
	$jointconstrain "MBipHead" y limit -25 25 0.2
	$jointconstrain "MBipHead" z limit -13 30 0.2
}
