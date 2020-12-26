$modelname "items/swords/sword08.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/swords/"

$texturegroup skinfamilies
{
	{ "sword08_01" }
	{ "sword08_02" }
	{ "sword08_03" }
	{ "sword08_04" }
	{ "sword08_05" }
}

$sequence "Idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}