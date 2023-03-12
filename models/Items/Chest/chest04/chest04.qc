$modelname "items/chests/chest04.mdl"
$model "studio" "ref.smd"

$surfaceprop "metal"
$cdmaterials "models/characters/npc/smugglers/"
$cdmaterials "models/humans/male/"

$texturegroup skinfamilies
{
	{ "smuggler02_head"	"smuggler02_body" }
	{ "smuggler02_head"	"smuggler02_body_molten" }
}

$sequence "idle" {
	"../../shared/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
