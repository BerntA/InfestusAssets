$staticprop
$modelname "propper/lightfall/tower02"
$scale "1.000000"
$body "Body" "tower02_ref"
$cdmaterials "models/propper"
$sequence idle "tower02_ref"
$surfaceprop "concrete"
$collisionmodel "tower02_phys"  {
	$concave
	$mass 10000.000000
	$maxconvexpieces 200
}
