$staticprop
$modelname "propper/lightfall/wall08_r"
$scale "1.000000"
$body "Body" "wall08_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall08_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall08_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
