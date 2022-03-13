
$modelname "props_crystals/crystal01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "crystal01.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition -3.764 4.116 -2.163

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

$bbox -61.726 -54.193 -58.827 53.494 46.665 54.502


$sequence "idle" {
	"crystal01_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
