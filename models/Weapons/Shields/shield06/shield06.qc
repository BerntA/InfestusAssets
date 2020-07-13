
$modelname "items/shields/shield06.mdl"
$model "studio" "ref.smd"

$texturegroup skinfamilies
{
	{ "shield06_01" }
	{ "shield06_02" }
}

$surfaceprop "metal"
$illumposition -10.219 5.624 42.144
$cdmaterials "models/items/shields/"

$sequence "idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
