$staticprop
$modelname "propper/lightfall/wall12_l"
$scale "1.000000"
$body "Body" "wall12_l_ref"
$cdmaterials "models/propper"
$sequence idle "wall12_l_ref"
$surfaceprop "concrete"
$collisionmodel "wall12_l_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
