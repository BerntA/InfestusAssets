
$modelname "props_crystals/crystal03.mdl"

$staticprop

$bodygroup "Body"
{
	studio "crystal03.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition -5.102 3.415 -2.412

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

$bbox -60.561 -66.348 -83.883 53.731 56.143 79.059


$sequence "idle" {
	"crystal03_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
