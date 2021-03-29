$staticprop
$modelname "propper/lightfall/wall10_r"
$scale "1.000000"
$body "Body" "wall10_r_ref"
$cdmaterials "models/propper"
$sequence idle "wall10_r_ref"
$surfaceprop "concrete"
$collisionmodel "wall10_r_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
