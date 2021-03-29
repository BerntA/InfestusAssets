$staticprop
$modelname "propper/lightfall/window01_out"
$scale "1.000000"
$body "Body" "window01_out_ref"
$cdmaterials "models/propper"
$sequence idle "window01_out_ref"
$surfaceprop "concrete"
$collisionmodel "window01_out_phys"  {
	$concave
	$mass 1000.000000
	$maxconvexpieces 200
}
