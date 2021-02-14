$modelname "items/helmets/helm10.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/helmets/plate/"
$illumposition 0 0 0 ValveBiped.Bip01_Head1

$texturegroup skinfamilies
{
	{ "helm10_01" }
	{ "helm10_02" }
}

$sequence "idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}