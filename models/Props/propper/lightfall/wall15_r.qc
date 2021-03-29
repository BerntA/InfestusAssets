$staticprop
$modelname "propper/lightfall/wall15_r"
$scale "1.000000"
$body "Body" "wall15_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall15_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall15_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
