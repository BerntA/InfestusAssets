$staticprop
$modelname "propper/lightfall/wall20"
$scale "1.000000"
$body "Body" "wall20_ref"
$cdmaterials "models/propper"
$sequence idle "wall20_ref"
$surfaceprop "concrete"
$collisionmodel "wall20_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
