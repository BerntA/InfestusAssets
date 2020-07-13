$modelname "items/legs/leg01.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/characters/npc/guard/"
$cdmaterials "models/humans/male/"

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
