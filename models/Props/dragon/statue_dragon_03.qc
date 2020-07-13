
$modelname "aoc_architecture/statue_dragon03.mdl"
$staticprop

$bodygroup "Body"
{
	studio "statue_dragon_breakable_dragon.smd"
}

$texturegroup skinfamilies
{
	{ "rock_dragon"  }
	{ "rock_dragon_02" }
}

$lod 40
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod1.smd"
	nofacial
}
$lod 70
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod2.smd"
	nofacial
}
$lod 90
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod3.smd"
	nofacial
}
$lod 130
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod4.smd"
	nofacial
}
$lod 190
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod5.smd"
	nofacial
}
$lod 350
{
	replacemodel "statue_dragon_breakable_dragon.smd" "statue_dragon_breakable_dragon_lod6.smd"
	nofacial
}

$surfaceprop "rock"
$contents "solid"
$illumposition 0.484 11.173 156.269

$cdmaterials "models/aoc_architecture/"

$cbox 0 0 0 0 0 0
$bbox -93.539 -112.652 58.183 71.193 112.652 249.988

$sequence "Idle" {
	"statue_dragon_breakable_anim_@Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "statue_dragon_breakable_phy.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 25

}
