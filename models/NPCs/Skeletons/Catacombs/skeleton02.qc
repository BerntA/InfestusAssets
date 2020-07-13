$modelname "characters/npc/skeleton02.mdl"

$bodygroup "studio"
{
	studio "ref.smd"
}

$bodygroup helm 
{
	studio "gear_01.smd"
	blank
}

$cdmaterials "models/items/helmets/plate/"

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
