$modelname "items/helmets/helm17.mdl"

$bodygroup "mask"
{
	studio "../helm16/ref.smd"
}

$bodygroup "hood"
{
	studio "../../Special/mage-robe/head.smd"
}

$surfaceprop "flesh"
$cdmaterials "models/items/helmets/cloth/"
$illumposition 0 0 0 ValveBiped.Bip01_Head1

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
