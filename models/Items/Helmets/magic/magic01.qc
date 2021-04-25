//
// Used for particle based helmets!
//

$modelname "items/helmets/magic01.mdl"
$model "studio" "ref.smd"
$surfaceprop "flesh"
$cdmaterials "models/items/helmets/"
$illumposition 0 0 0 ValveBiped.Bip01_Head1

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$attachment "helm" "ValveBiped.Bip01_Head1" 1 0 0 rotate 0 -90 -90

$keyvalues
{
	particles
	{
		effect
		{
			name				"helm_halo01"
			attachment_type		"follow_attachment"
			attachment_point	"helm"
		}
	}
}
