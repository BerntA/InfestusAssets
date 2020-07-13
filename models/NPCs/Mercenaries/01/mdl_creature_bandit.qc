
$modelname "monsters/mdl_creature_bandit.mdl"

$model "mdl_creature_bandit" "mdl_creature_bandit.smd" {

	eyeball "eye_right" "MBipHead" -1.074009 -3.425991 66.796992 "eyeball_r" 1.6 4 "iris_unused" 0.65
	eyeball "eye_left" "MBipHead" 1.094991 -3.425991 66.796992 "eyeball_l" 1.6 -4 "iris_unused" 0.64


	flexfile "mdl_creature_bandit_01.vta" 
	{
		defaultflex frame 0
		// Already in eyelid lines: flex "lower_right" frame 1
	}

	flexcontroller eyes range -35 35 "eyes_updown"
	flexcontroller eyes range -20 20 "eyes_rightleft"
}


$surfaceprop "bsflesh"

$contents "solid"

$illumposition -1.764 -10.282 34.421

$cdmaterials "monsters\"

$attachment "eyes" "MBipHead" 4.76 0 3.36 rotate -88.69 0 180
$attachment "forward" "MBipHead" 0 0 0 rotate -90 -180 0

$cbox 0 0 0 0 0 0

$bbox -15.106 -21.393 -2.144 35.67 17.865 70.985


$sequence "idle" {
	"mdl_creature_bandit_anim_@idle.smd"
	activity "ACT_IDLE" 3
	fadein 1
	fadeout 1
	fps 4
	loop
}

$sequence "idle03" {
	"mdl_creature_bandit_anim_@idle03.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle04" {
	"mdl_creature_bandit_anim_@idle04.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "idle05" {
	"mdl_creature_bandit_anim_@idle05.smd"
	activity "ACT_IDLE" 1
	fadein 1
	fadeout 1
	fps 3
	loop
}

$sequence "walk_all" {
	"mdl_creature_bandit_anim_@walk_all.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	loop
	walkframe 30 LX LY
}

$sequence "strafe_right" {
	"mdl_creature_bandit_anim_@strafe_right.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "walk_back" {
	"mdl_creature_bandit_anim_@walk_back.smd"
	activity "ACT_STEP_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "strafe_left" {
	"mdl_creature_bandit_anim_@strafe_left.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "run 01" {
	"mdl_creature_bandit_anim_@run 01.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 18 LX LY
}

$sequence "Attack" {
	"mdl_creature_bandit_anim_@Attack.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_MONSTER_MELEE_HIT1 10 "" }
	{ event AE_CL_PLAYSOUND 18 "sfx.SFX_Hit_Axe_Leather" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "standtosit" {
	"mdl_creature_bandit_anim_@standtosit.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "Sit" {
	"mdl_creature_bandit_anim_@Sit.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "sittostand" {
	"mdl_creature_bandit_anim_@sittostand.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "ragdoll" {
	"mdl_creature_bandit_anim_@ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	{ event AE_CL_PLAYSOUND 0 "sfx.SFX_Creature_Bandit_Death" }
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "mdl_creature_bandit_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 1
	$rotdamping 2.5
	$rootbone "MBipPelvis"


	$jointconstrain "MBipSpineBase" x limit 0 0 0
	$jointconstrain "MBipSpineBase" y limit 0 0 0
	$jointconstrain "MBipSpineBase" z limit 0 0 0

	$jointconstrain "MBipSpineMid" x limit 0 0 0
	$jointconstrain "MBipSpineMid" y limit 0 0 0
	$jointconstrain "MBipSpineMid" z limit 0 0 0

	$jointconstrain "MBipSpineTop" x limit 0 0 0
	$jointconstrain "MBipSpineTop" y limit 0 0 0
	$jointconstrain "MBipSpineTop" z limit 0 0 0

	$jointconstrain "MBipRBicep" x limit -30 30 0.2
	$jointconstrain "MBipRBicep" y limit -95 84 0.2
	$jointconstrain "MBipRBicep" z limit -86 26 0.2

	$jointconstrain "MBipRForearm" x limit 0 0 0.2
	$jointconstrain "MBipRForearm" y limit 0 0 0.2
	$jointconstrain "MBipRForearm" z limit -149 4 0.2

	$jointconstrain "MBipLBicep" x limit -30 30 0.2
	$jointconstrain "MBipLBicep" y limit -95 84 0.2
	$jointconstrain "MBipLBicep" z limit -86 26 0.2

	$jointconstrain "MBipNeck" x limit 0 0 0
	$jointconstrain "MBipNeck" y limit 0 0 0
	$jointconstrain "MBipNeck" z limit 0 0 0

	$jointconstrain "MBipLForearm" x limit 0 0 0.2
	$jointconstrain "MBipLForearm" y limit 0 0 0.2
	$jointconstrain "MBipLForearm" z limit -149 4 0.2

	$jointconstrain "MBipRHand" x limit -60 60 0.2
	$jointconstrain "MBipRHand" y limit 0 0 0
	$jointconstrain "MBipRHand" z limit -57 70 0.2

	$jointconstrain "MBipHead" x limit -20 20 0.2
	$jointconstrain "MBipHead" y limit -25 25 0.2
	$jointconstrain "MBipHead" z limit -13 30 0.2

	$jointconstrain "MBipRThigh" x limit 0 0 0
	$jointconstrain "MBipRThigh" y limit 0 0 0
	$jointconstrain "MBipRThigh" z limit -97 32 0.2

	$jointconstrain "MBipRCalf" x limit 0 0 0.2
	$jointconstrain "MBipRCalf" y limit 0 0 0.2
	$jointconstrain "MBipRCalf" z limit -12 126 0.2

	$jointconstrain "MBipLHand" x limit -60 60 0.2
	$jointconstrain "MBipLHand" y limit 0 0 0
	$jointconstrain "MBipLHand" z limit -57 70 0.2

	$jointconstrain "MBipLThigh" x limit 0 0 0
	$jointconstrain "MBipLThigh" y limit 0 0 0
	$jointconstrain "MBipLThigh" z limit -97 32 0.2

	$jointconstrain "MBipLCalf" x limit 0 0 0.2
	$jointconstrain "MBipLCalf" y limit 0 0 0.2
	$jointconstrain "MBipLCalf" z limit -12 126 0.2

	$jointconstrain "MBipLFoot" x limit -28 12 0
	$jointconstrain "MBipLFoot" y limit -8 8 0
	$jointconstrain "MBipLFoot" z limit -26 21 0

	$jointconstrain "MBipRFoot" x limit 0 0 0
	$jointconstrain "MBipRFoot" y limit -25 6 0.2
	$jointconstrain "MBipRFoot" z limit -15 35 0.2
}
