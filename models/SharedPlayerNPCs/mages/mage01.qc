
$modelname "characters/npc/mage01.mdl"

$bodygroup "mage"
{
	studio "../merchants/merchant01.smd"
}

$bodygroup "chest"
{
	studio "../../Items/Special/sovereign/chest.smd"
}

$bodygroup "legs"
{
	studio "../../Items/Special/sovereign/legs.smd"
}

$bodygroup "boots"
{
	studio "../../Items/Special/sovereign/boots.smd"
}

$bodygroup "gloves"
{
	studio "../../Items/Special/sovereign/gloves.smd"
}

$surfaceprop "flesh"
$contents "solid"
$eyeposition 0 0 70
$maxeyedeflection 90
$mostlyopaque

$cdmaterials "models/items/sovereign/"
$cdmaterials "models/characters/npc/merchant/"
$cdmaterials "models/humans/male/"

$texturegroup "skinfamilies"
{
	{ "peasant_body1" "peasant_head" }
	{ "peasant_body1" "peasant_head2" }
	{ "peasant_body1" "peasant_head3" }
	
	{ "peasant_body2" "peasant_head" }
	{ "peasant_body2" "peasant_head2" }
	{ "peasant_body2" "peasant_head3" }
	
	{ "peasant_body3" "peasant_head" }
	{ "peasant_body3" "peasant_head2" }
	{ "peasant_body3" "peasant_head3" }
	
	{ "peasant_body_dead1" "peasant_head_dead1" }
}

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$proceduralbones "../merchants/merchant01.vrd"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$attachment "mainhand" "ValveBiped.Anim_Attachment_RH" -0.25 2.40 0.40 rotate 0 0 -90
$attachment "offhand" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "offhand_shield" "ValveBiped.Anim_Attachment_LH" 0.25 1.60 0.40 rotate 0 0 -90
$attachment "back" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 90
$attachment "back_shield" "ValveBiped.Bip01_Spine4" -4.45 -2.25 4.35 rotate 15 -100 -90
$attachment "back_staff" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 180 -100 -90
$attachment "back_crossbow" "ValveBiped.Bip01_Spine4" 0 -5 0 rotate 0 70 180
$attachment "waist_l" "ValveBiped.Bip01_Spine" 0 1 7 rotate -80 0 30
$attachment "waist_r" "ValveBiped.Bip01_Spine" 0 1 -7 rotate -105 0 30

$sequence "ragdoll" {
	"../merchants/ragdoll.smd"
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
