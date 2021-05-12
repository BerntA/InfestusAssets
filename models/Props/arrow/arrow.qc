$modelname "arrow.mdl"

$bodygroup "studio"
{
	studio "arrow.smd"
}

$surfaceprop "wood"
$contents "solid"
$illumposition 0 -12.854 0.322
$cdmaterials "models/weapons/"
$cbox 0 0 0 0 0 0
$bbox -0.575 -1.114 -0.643 26.283 1.114 1.286

$sequence "idle" {
	"arrow_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$attachment "tail" "projectile_bone" 0 1.5 0 rotate 0 90 0
