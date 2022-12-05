$modelname "items/helmets/helm16.mdl"
$model "studio" "ref.smd"
$surfaceprop "plaster"
$cdmaterials "models/items/helmets/cloth/"
$illumposition 0 0 0 ValveBiped.Bip01_Head1

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
