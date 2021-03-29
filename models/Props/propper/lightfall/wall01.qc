$staticprop
$modelname "propper/lightfall/wall01"
$scale "1.000000"
$body "Body" "wall01_ref"
$cdmaterials "models/propper"
$sequence idle "wall01_ref"
$surfaceprop "concrete"
$collisionmodel "wall01_phys"  {
	$concave
	$mass 5000.000000
	$maxconvexpieces 200
}
