$staticprop
$modelname "propper/lightfall/wall21"
$scale "1.000000"
$body "Body" "wall21_ref"
$cdmaterials "models/propper"
$sequence idle "wall21_ref"
$surfaceprop "concrete"
$collisionmodel "wall21_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
