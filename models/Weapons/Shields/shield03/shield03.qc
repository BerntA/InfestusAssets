
$modelname "items/shields/shield03.mdl"
$model "studio" "ref.smd"

$texturegroup skinfamilies
{
	{ "shield03_back"	"shield03_01_front" }
	{ "shield03_back"	"shield03_02_front" }
}

$surfaceprop "metal"
$illumposition -2.327 5.886 -12.2
$cdmaterials "models/items/shields/"

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}