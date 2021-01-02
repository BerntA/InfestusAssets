
$modelname "characters/npc/smuggler01.mdl"

$bodygroup "smuggler"
{
	studio "e_footman_reference.smd"
}

$lod 10
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod1.smd"
}
$lod 20
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod2.smd"
}
$lod 40
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod3.smd"
}
$lod 50
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod4.smd"
}
$lod 80
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod5.smd"
}
$shadowlod
{
	replacemodel "e_footman_reference.smd" "e_footman_body0_model0_lod6.smd"
}

$surfaceprop "flesh"

$contents "solid"

$eyeposition 0 0 70

$maxeyedeflection 90

$mostlyopaque

$cdmaterials "models/characters/npc/smugglers/"
$cdmaterials "models/humans/male/"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.43 -3.51 0.05 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.8 -5.5 0.1 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "waist" "ValveBiped.Bip01_Spine" 0 -4 0 rotate 0 0 0

$attachment "mainhand" "ValveBiped.Anim_Attachment_RH" -0.25 2.40 0.40 rotate 0 0 -90
$attachment "offhand" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "offhand_shield" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "back" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 90
$attachment "back_shield" "ValveBiped.Bip01_Spine4" -4.45 -2.25 4.35 rotate 15 -100 -90
$attachment "back_staff" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 -90
$attachment "back_crossbow" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 0 70 180
$attachment "waist_l" "ValveBiped.Bip01_Spine" 0 1 7 rotate -80 0 30
$attachment "waist_r" "ValveBiped.Bip01_Spine" 0 1 -7 rotate -105 0 30

$cbox 0 0 0 0 0 0
$bbox -13 -13 0 13 13 72
$proceduralbones "e_footman.vrd"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"e_footman_anim_@ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$includemodel "humans/male_shared.mdl"
$includemodel "humans/male_ss.mdl"
$includemodel "humans/male_gestures.mdl"
$includemodel "humans/male_postures.mdl"
$includemodel "characters/anims/shared.mdl"

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1
