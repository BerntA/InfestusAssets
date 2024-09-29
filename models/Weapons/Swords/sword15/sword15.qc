$modelname "items/swords/sword15.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/swords/"

$texturegroup skinfamilies
{
	{ "sword15_01" }
	{ "sword15_02" }
	{ "sword15_03" }
	{ "sword15_04" }
	{ "sword15_05" }
}

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}
