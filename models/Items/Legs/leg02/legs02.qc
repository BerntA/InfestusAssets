$modelname "items/legs/leg02.mdl"
$model "studio" "ref.smd"

$surfaceprop "metal"
$cdmaterials "models/characters/npc/smugglers/"
$cdmaterials "models/humans/male/"

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
