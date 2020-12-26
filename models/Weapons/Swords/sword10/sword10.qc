$modelname "items/swords/sword10.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/swords/"

$texturegroup skinfamilies
{
	{ "sword10_01" }
	{ "sword10_02" }
	{ "sword10_03" }
	{ "sword10_04" }
	{ "sword10_05" }
}

$sequence "Idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}