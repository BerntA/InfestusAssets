$modelname "items/swords/sword09.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/swords/"

$texturegroup skinfamilies
{
	{ "sword09_01" }
	{ "sword09_02" }
	{ "sword09_03" }
	{ "sword09_04" }
	{ "sword09_05" }
}

$sequence "Idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}