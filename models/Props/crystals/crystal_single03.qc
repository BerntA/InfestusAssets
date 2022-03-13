
$modelname "props_crystals/crystal_single03.mdl"

$staticprop

$bodygroup "Body"
{
	studio "crystal_single03.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition 0 0.305 -18

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

$bbox -8.305 -7.999 -54.5 7.695 7.999 18.499


$sequence "idle" {
	"crystal_single03_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
