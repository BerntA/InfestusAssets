$staticprop
$modelname "propper/lightfall/wall09_r"
$scale "1.000000"
$body "Body" "wall09_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall09_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall09_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
