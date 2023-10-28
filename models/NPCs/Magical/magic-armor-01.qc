$modelname "characters/npc/armor01.mdl"

$include "nullmodel-player.qci"

$cdmaterials "models/items/helmets/plate/"
$cdmaterials "models/items/helmets/mail/"
$cdmaterials "models/items/helmets/cloth/"

$cdmaterials "models/items/chests/plate/"
$cdmaterials "models/items/chests/cloth/"

$cdmaterials "models/characters/npc/guard/"
$cdmaterials "models/characters/npc/smugglers/"
$cdmaterials "models/items/sovereign/"

$bodygroup "helm"
{
	studio "../../Items/Helmets/helm01/ref.smd"
	studio "../../Items/Helmets/helm02/ref.smd"
	studio "../../Items/Helmets/helm03/ref.smd"
	studio "../../Items/Helmets/helm06/ref.smd"
	studio "../../Items/Helmets/helm08/ref.smd"
	studio "../../Items/Helmets/helm09/ref.smd"
	studio "../../Items/Helmets/helm10/ref.smd"
	studio "../../Items/Helmets/helm15/ref.smd"
	studio "../../Items/Helmets/helm16/ref.smd"
	studio "../../Items/Special/mage-robe/head.smd"
	studio "../../Items/Special/sovereign/helm.smd"
}

$bodygroup "chest"
{
	studio "../../Items/Chest/chest01/ref.smd"
	studio "../../Items/Chest/chest02/ref.smd"
	studio "../../Items/Chest/chest03/ref.smd"
	studio "../../Items/Chest/chest04/ref.smd"
	studio "../../Items/Special/mage-robe/chest.smd"
	studio "../../Items/Special/sovereign/chest.smd"
}

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
