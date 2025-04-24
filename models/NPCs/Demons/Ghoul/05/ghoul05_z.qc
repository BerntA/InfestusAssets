
$modelname "characters/npc/ghoul05_z.mdl"

$bodygroup "ghoul"
{
	studio "ref.smd"
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 1.102 -3.632 42.561
$eyeposition 0 0 70

$cdmaterials "models/characters/npc/ghoul/"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.61 -4.2 0.12 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.8 -5.8 -0.15 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "waist" "ValveBiped.Bip01_Spine" 0 -4 0 rotate 0 0 0

$attachment "mainhand" "ValveBiped.Bip01_R_Hand" 2.50 -0.50 0.00 rotate -0 -90 -180
$attachment "offhand" "ValveBiped.Bip01_L_Hand" 3.00 -2.00 1.00 rotate 0 75 0
$attachment "offhand_shield" "ValveBiped.Bip01_L_Hand" 3.00 -2.00 1.00 rotate 0 75 0
$attachment "back" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 90
$attachment "back_shield" "ValveBiped.Bip01_Spine4" -4.45 -2.25 4.35 rotate 15 -100 -90
$attachment "back_staff" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 -90
$attachment "back_crossbow" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 0 70 180
$attachment "waist_l" "ValveBiped.Bip01_Spine" 0 1 5.5 rotate -80 0 30
$attachment "waist_r" "ValveBiped.Bip01_Spine" 0 1 -5.5 rotate -105 0 30

$cbox 0 0 0 0 0 0
$bbox -10.632 -13.008 13.05 17.896 15.211 72.072

$poseparameter "move_yaw" -180 180 loop 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 3
}

$includemodel "characters/anims/zombie.mdl"
