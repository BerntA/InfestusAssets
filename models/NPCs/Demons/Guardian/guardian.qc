
$origin 0 0 -1.25
$scale 1.30

$modelname "characters/npc/guardian01.mdl"
$model "studio" "ref.smd"

$poseparameter move_yaw -180.00 180.00 wrap

$cdmaterials "models/crusader/"
$eyeposition -0.000 -0.000 70.000
$attachment "eyes" "ValveBiped.Bip01_Head1" 3.61 -4.20 0.12 rotate -0.00 -80.10 -90.00
$surfaceprop "metal"
$illumposition -0.487 -0.000 36.175

$texturegroup skinfamilies
{
	{"guardian_body_1" "guardian_weapon_1"} 
	{"guardian_body_2" "guardian_weapon_2"} 
}

$sequence idle "anims/idle" loop ACT_IDLE 1 fps 20.00

$animation a_MoveS "anims/a_runS" loop fps 40.000000 LX LY 
$animation a_MoveSE "anims/a_runSE" loop fps 40.000000 LX LY 
$animation a_MoveE "anims/a_runE" loop fps 40.000000 LX LY 
$animation a_MoveNE "anims/a_runNE" loop fps 40.000000 LX LY 
$animation a_MoveN "anims/a_runN" loop fps 40.000000 LX LY 
$animation a_MoveNW "anims/a_runNW" loop fps 40.000000 LX LY 
$animation a_MoveW "anims/a_runW" loop fps 40.000000 LX LY 
$animation a_MoveSW "anims/a_runSW" loop fps 40.000000 LX LY 

$sequence walk {
	a_MoveS a_MoveSE a_MoveE 
	a_MoveNE a_MoveN a_MoveNW  
	a_MoveW a_MoveSW a_MoveS 
	blendwidth 9 
	blend "move_yaw" -180 180	
	"ACT_WALK" 1 
}

$sequence run {
	a_MoveS a_MoveSE a_MoveE 
	a_MoveNE a_MoveN a_MoveNW  
	a_MoveW a_MoveSW a_MoveS 
	blendwidth 9 
	blend "move_yaw" -180 180	
	"ACT_RUN" 1 
	fps 100 
}

// Regular attacks

$weightlist "attacking" {
	"ValveBiped.Bip01_Pelvis" "0"
	"ValveBiped.Bip01_Spine" "1"
	"ValveBiped.Bip01_Spine1" "1"
	"ValveBiped.Bip01_Spine2" "1"
	"ValveBiped.Bip01_Spine4" "1"
	"ValveBiped.Bip01_Neck1" "1"
	"ValveBiped.Bip01_Head1" "1"
	"ValveBiped.Bip01_L_Clavicle" "1"
	"ValveBiped.Bip01_L_UpperArm" "1"
	"ValveBiped.Bip01_L_Forearm" "1"
	"ValveBiped.Bip01_L_Hand" "1"
	"ValveBiped.Bip01_Guard" "1"
	"ValveBiped.Bip01_R_Clavicle" "1"
	"ValveBiped.Bip01_R_UpperArm" "1"
	"ValveBiped.Bip01_R_Forearm" "1"
	"ValveBiped.Bip01_R_Hand" "1"
	"ValveBiped.Bip01_Sword" "1"
	"ValveBiped.Bip01_L_Thigh" "0"
	"ValveBiped.Bip01_L_Calf" "0"
	"ValveBiped.Bip01_L_Foot" "0"
	"ValveBiped.Bip01_R_Thigh" "0"
	"ValveBiped.Bip01_R_Calf" "0"
	"ValveBiped.Bip01_R_Foot" "0"
}

$sequence "melee_01" {
	"anims\melee_02.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

$sequence "melee_02" {
	"anims\melee_03.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

// Spell Attacks

$sequence "melee_03" {
	"anims\melee_03.smd"
	activity "ACT_INF_MELEE_SLASH_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

$sequence "melee_04" {
	"anims\melee_03.smd"
	activity "ACT_INF_MELEE_SMASH" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

$sequence "melee_05" {
	"anims\melee_02.smd"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

$sequence "melee_06" {
	"anims\melee_02.smd"
	activity "ACT_INF_MELEE_SLASH_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 35.00
	weightlist "attacking"
}

// Flinch

$animation a_idle "anims/idle.smd"
$animation g_flinch_center "anims/FlinchC.smd" subtract a_idle 0
$animation g_flinch_right "anims/FlinchR.smd" subtract a_idle 0
$animation g_flinch_left "anims/FlinchL.smd" subtract a_idle 0

$sequence FlinchC "g_flinch_center" ACT_BIG_FLINCH 1 fps 30.00 delta
$sequence FlinchR "g_flinch_right" ACT_FLINCH_RIGHTARM 1 fps 30.00 delta
$sequence FlinchL "g_flinch_left" ACT_FLINCH_LEFTARM 1 fps 30.00 delta

// Extra
$sequence static_idle "anims/static_idle" loop fps 30.00
$sequence static_off "anims/static_off" fps 30.00
$sequence ragdoll "anims/ragdoll" ACT_DIERAGDOLL 1 fps 30.00

$sequence "death" "anims/death.smd" activity ACT_INF_DEATH 1 fps 16
$sequence "death_idle" "anims/death_idle.smd" activity ACT_INF_DEATH_IDLE 1 fps 70

$ikchain rhand ValveBiped.Bip01_R_UpperArm knee 0.640 0.769 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee 0.607 0.795 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee 0.545 -0.838 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee 0.518 -0.855 -0.000

$collisionjoints "phy.smd"
{
	$mass 200.0
	$inertia 2.00
	$damping 0.01
	$rotdamping 0.40
	$rootbone "valvebiped.bip01_pelvis"
	$jointmerge "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01_Spine1"

	$jointconstrain "valvebiped.bip01_spine2" x limit -48.00 48.00 0.20
	$jointconstrain "valvebiped.bip01_spine2" y limit -25.00 25.00 0.20
	$jointconstrain "valvebiped.bip01_spine2" z limit -25.00 50.00 0.20

	$jointmassbias "valvebiped.bip01_head1" 2.00
	$jointconstrain "valvebiped.bip01_head1" x limit -26.00 17.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit 8.00 32.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -26.00 0.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -50.00 57.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -19.00 102.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 30.00 0.20

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -50.00 57.00 0.20
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -102.00 19.00 0.20
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -93.00 30.00 0.20

	$jointmassbias "valvebiped.bip01_l_forearm" 2.00
	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -120.00 4.00 0.20

	$jointmassbias "valvebiped.bip01_l_hand" 4.00
	$jointconstrain "valvebiped.bip01_l_hand" x limit -120.00 120.00 0.20
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_hand" z limit -57.00 70.00 0.20

	$jointmassbias "valvebiped.bip01_r_upperarm" 2.00
	$jointconstrain "valvebiped.bip01_r_upperarm" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -120.00 4.00 0.20

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -25.00 39.00 0.20
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 75.00 0.20
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -97.00 32.00 0.20

	$jointmassbias "valvebiped.bip01_r_calf" 2.00
	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.20

	$jointmassbias "valvebiped.bip01_head1" 2.00
	$jointconstrain "valvebiped.bip01_head1" x limit -17.00 -17.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit 3.00 41.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit 8.00 17.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -25.00 20.00 0.20
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -73.00 6.00 0.20
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -93.00 30.00 0.20

	$jointmassbias "valvebiped.bip01_l_calf" 2.00
	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.20

	$jointmassbias "valvebiped.bip01_l_foot" 4.00
	$jointconstrain "valvebiped.bip01_l_foot" x limit -1.00 -1.00 0.20
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.20
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.20

	$jointmassbias "valvebiped.bip01_r_foot" 4.00
	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -21.00 6.00 0.20
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.20
	$animatedfriction 1.000 1000.000 0.800 0.500 0.000
}
