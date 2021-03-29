$staticprop
$modelname "propper/lightfall/wall12_r"
$scale "1.000000"
$body "Body" "wall12_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall12_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall12_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
