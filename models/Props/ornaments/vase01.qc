$modelname "objects/vase01.mdl"
$staticprop
$bodygroup "studio"
{
	studio "VaseWhiteGold.smd"
}

$TextureGroup "skinfamilies"
{
	{ "vase01" }
	{ "vase02" }
}

$surfaceprop "plaster"
$illumposition 0.109 0 12.319
$cdmaterials "models/objects/"

$sequence "idle" {
	"idle.smd"
	fps 1
}

$collisionmodel "VaseWhiteGold.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
	$maxconvexpieces 50
}
