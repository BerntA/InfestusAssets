$staticprop
$modelname "propper/lightfall/wall11_r"
$scale "1.000000"
$body "Body" "wall11_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall11_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall11_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
