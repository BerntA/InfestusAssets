
$modelname "aoc_architecture/statue_dragon_head.mdl"
$staticprop
$bodygroup "Body"
{
	studio "dragon_head.smd"
}

$texturegroup skinfamilies
{
	{ "rock_dragon"  }
	{ "rock_dragon_02" }
}

$surfaceprop "rock"
$illumposition 0 0 -12
$cdmaterials "models/aoc_architecture/"

$sequence "Idle" {
	"dragon_head_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dragon_head_phy.smd"
{
	$mass 200
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 35
}
