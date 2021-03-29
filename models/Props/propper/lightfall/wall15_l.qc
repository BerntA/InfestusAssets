$staticprop
$modelname "propper/lightfall/wall15_l"
$scale "1.000000"
$body "Body" "wall15_l_ref"
$cdmaterials "models/propper"
$sequence idle "wall15_l_ref"
$surfaceprop "concrete"
$collisionmodel "wall15_l_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
