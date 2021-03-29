$staticprop
$modelname "propper/lightfall/wall16"
$scale "1.000000"
$body "Body" "wall16_ref"
$cdmaterials "models/propper"
$sequence idle "wall16_ref"
$surfaceprop "concrete"
$collisionmodel "wall16_phys"  {
	$concave
	$mass 2500.000000
	$maxconvexpieces 200
}
