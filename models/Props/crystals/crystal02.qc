
$modelname "props_crystals/crystal02.mdl"

$staticprop

$bodygroup "Body"
{
	studio "crystal02.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition 0.917 -0.91 0.001

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

$bbox -48.697 -52.756 -54.5 50.517 54.59 54.502


$sequence "idle" {
	"crystal02_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
