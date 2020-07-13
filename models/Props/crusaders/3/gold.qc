$staticprop
$scale "1.30"
$modelname "crusader/crusader_3_gold.mdl"
$body "Body" "ref_gold.smd"
$cdmaterials "models/crusader"
$sequence idle "idle.smd" ACT_IDLE 1 fps 30.00
$surfaceprop "metal"
$collisionmodel "phy.smd"  {
	$concave
	$maxconvexpieces 200
	$mass 100.0
}
