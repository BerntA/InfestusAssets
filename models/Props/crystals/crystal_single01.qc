
$modelname "props_crystals/crystal_single01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "crystal_single01.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition -0.001 -0.001 0.001

$cdmaterials "models/props_crystals/"

$texturegroup "skinfamilies"
{
	{ "crystal_color_diff"  }
	{ "crystal_color_diffa" }
	{ "crystal_color_diffb" }
	{ "crystal_color_diffc" }
	{ "crystal_color_diffd" }
	{ "crystal_color_diffe" }
	{ "crystal_color_difff" }
	{ "crystal_color_diffg" }
}

$cbox 0 0 0 0 0 0

$bbox -16 -16.002 -54.5 16.002 16 54.502


$sequence "idle" {
	"crystal_single01_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
