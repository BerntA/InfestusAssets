$modelname "characters/npc/skeleton_armored01.mdl"

$bodygroup "studio"
{
	studio "../Sovereign/ref.smd"
}

$bodygroup "armor"
{
	studio "../Sovereign/armor.smd"
}

$bodygroup helm 
{
	studio "gear_01.smd"
	studio "gear_02.smd"
	studio "gear_03.smd"
	blank
}

$cdmaterials "models/items/helmets/plate/"
$cdmaterials "models/items/helmets/mail/"
$cdmaterials "models/items/sovereign/"

$include "./shared.qci"
$include "./anims.qci"

$attachment "eye_l" "MBipHead" 5.45 -1.35 2.40 rotate -90 90 90
$attachment "eye_r" "MBipHead" 5.45 1.85 2.40 rotate -90 90 90

$keyvalues
{
	particles
	{
		effect
		{
			name				"fire_verysmall_01"
			attachment_type		"follow_attachment"
			attachment_point	"eye_l"
		}
		effect
		{
			name				"fire_verysmall_01"
			attachment_type		"follow_attachment"
			attachment_point	"eye_r"
		}
	}
}
