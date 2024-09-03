
$modelname "characters/npc/mummy01.mdl"

$bodygroup "mummy"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition -0.007 0.045 35.329
$eyeposition 0 0 70

$cdmaterials "models/characters/npc/mummy/"
$texturegroup "skinfamilies"
{
	{ "mummy01a"  }
	{ "mummy01b"  }
	{ "mummy01c"  }
}

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.26 -3.43 -0.04 rotate 0 -74.77 -90
//$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.3 0 rotate 0 -80 -90

$cbox 0 0 0 0 0 0
$bbox -13 -13 0 13 13 72

$poseparameter "move_yaw" -90 90 loop 0

$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0 0 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0 0 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0 0 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0 0 0

$animation "a_walk2" "a_walk2.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1
	walkframe 48 LX LY
}

$animation "a_walk3" "a_walk3.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1
	walkframe 48 LX LY
}

$animation "a_Walk4" "a_Walk4.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1
	walkframe 48 LX LY
}

$animation "a_walkE" "a_walkE.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1
	walkframe 29 LX LY
}

$animation "a_walkNE" "a_walkNE.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1
	walkframe 29 LX LY
}

$animation "a_walkN" "a_walkN.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 1
	walkframe 47 LX LY
}

$animation "a_walkNW" "a_walkNW.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 1
	walkframe 47 LX LY
}

$animation "a_walkW" "a_walkW.smd" {
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 1
	walkframe 47 LX LY
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
}

$sequence "idle01" {
	"Idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1
}

// WALK
$sequence "walk02" {
	"a_walk2"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "walk03" {
	"a_walk3"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "walk04" {
	"a_Walk4"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "walk01" {
	"a_walkE"
	"a_walkNE"
	"a_walkN"
	"a_walkNW"
	"a_walkW"
	activity "ACT_WALK" 1
	blend "move_yaw" -90 90
	blendwidth 5
	fadein 0.2
	fadeout 0.2
}

// RUN
$sequence "run02" {
	"a_walk2"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "run03" {
	"a_walk3"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "run04" {
	"a_Walk4"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "run01" {
	"a_walkE"
	"a_walkNE"
	"a_walkN"
	"a_walkNW"
	"a_walkW"
	activity "ACT_RUN" 1
	blend "move_yaw" -90 90
	blendwidth 5
	fadein 0.2
	fadeout 0.2
}

// COMBAT
$weightlist "attacking" {
	"ValveBiped.Bip01_Pelvis" "0"
	"ValveBiped.Bip01_L_Thigh" "0"
	"ValveBiped.Bip01_L_Calf" "0"
	"ValveBiped.LFooteff" "0"
	"ValveBiped.Bip01_L_Foot" "0"
	"ValveBiped.Bip01_L_Toe0" "0"
	"ValveBiped.Bip01_R_Thigh" "0"
	"ValveBiped.Bip01_R_Calf" "0"
	"ValveBiped.RFooteff" "0"
	"ValveBiped.Bip01_R_Foot" "0"
	"ValveBiped.Bip01_R_Toe0" "0"
	"ValveBiped.Bip01_Spine" "0"
	"ValveBiped.Bip01_Spine1" "0"
	"ValveBiped.Bip01_Spine2" "0"
	"ValveBiped.Bip01_Spine4" "1"
	"ValveBiped.Bip01_Neck1" "1"
	"ValveBiped.Bip01_Head1" "1"
	"ValveBiped.Jaw1" "1"
	"ValveBiped.eyeright" "1"
	"ValveBiped.eyeleft" "1"
	"ValveBiped.Bip01_L_Clavicle" "1"
	"ValveBiped.Bip01_L_UpperArm" "1"
	"ValveBiped.Bip01_L_Forearm" "1"
	"ValveBiped.LArmeff" "1"
	"ValveBiped.LHandRoot" "1"
	"ValveBiped.Bip01_L_Hand" "1"
	"ValveBiped.LHandeffector" "1"
	"ValveBiped.Bip01_L_Finger2" "1"
	"ValveBiped.Bip01_L_Finger21" "1"
	"ValveBiped.Bip01_L_Finger22" "1"
	"ValveBiped.Bip01_L_Finger01" "1"
	"ValveBiped.Bip01_R_Clavicle" "1"
	"ValveBiped.RShouldereff" "1"
	"ValveBiped.Bip01_R_UpperArm" "1"
	"ValveBiped.Bip01_R_Forearm" "1"
	"ValveBiped.RArmeff" "1"
	"ValveBiped.Bip01_R_Hand" "1"
	"ValveBiped.Bip01_R_Finger2" "1"
	"ValveBiped.Bip01_R_Finger21" "1"
	"ValveBiped.Bip01_R_Finger22" "1"
	"ValveBiped.Bip01_R_Finger0" "1"
	"ValveBiped.Bip01_R_Finger01" "1"
}

$sequence "attackA" {
	"attackA.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0 usesequence 
	//ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1 usesequence 
	//walkframe 53 LX LY
	weightlist "attacking"
}

$sequence "attackB" {
	"attackB.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0 usesequence 
	//ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1 usesequence 
	//walkframe 53 LX LY
	weightlist "attacking"
}

$sequence "attackC" {
	"attackC.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0
	//ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1
	weightlist "attacking"
}

$sequence "attackD" {
	"attackD.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0
	//ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1
	weightlist "attacking"
}

$sequence "attackC_stab" {
	"attackC.smd"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

$sequence "attackD_stab" {
	"attackD.smd"
	activity "ACT_INF_MELEE_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "attacking"
}

// FLINCH
$sequence "flinch1" {
	"flinch1.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
}

$sequence "flinch2" {
	"flinch2.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
}

// DEATH
$sequence "death_idle" {
	"death_idle.smd"
	fadein 0.2
	fadeout 0.2
	activity "ACT_INF_DEATH_IDLE" 1
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "death" {
	"death.smd"
	fadein 0.2
	fadeout 0.2
	snap
	activity "ACT_INF_DEATH" 1
	fps 50
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3
}

$collisionjoints "phy.smd"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -37 37 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 59 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 1

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 1
}
