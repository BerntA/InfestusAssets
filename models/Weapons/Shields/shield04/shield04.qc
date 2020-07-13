
$modelname "items/shields/shield04.mdl"
$model "studio" "ref.smd"

$texturegroup skinfamilies
{
	{ "shield04_01" }
	{ "shield04_02" }
}

$surfaceprop "metal"
$illumposition -4.413 -0.668 0.437
$cdmaterials "models/items/shields/"

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}