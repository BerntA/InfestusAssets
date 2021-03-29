$staticprop
$modelname "propper/lightfall/wall10_l"
$scale "1.000000"
$body "Body" "wall10_l_ref"
$cdmaterials "models/propper"
$sequence idle "wall10_l_ref"
$surfaceprop "concrete"
$collisionmodel "wall10_l_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
