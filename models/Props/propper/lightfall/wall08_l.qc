$staticprop
$modelname "propper/lightfall/wall08_l"
$scale "1.000000"
$body "Body" "wall08_l_ref"
$cdmaterials "models/propper"
$sequence idle "wall08_l_ref"
$surfaceprop "concrete"
$collisionmodel "wall08_l_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
