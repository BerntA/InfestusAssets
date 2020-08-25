$modelname "objects/ornament01.mdl"
$model "studio" "ornament01.smd"
$cdmaterials "models/objects/"
$surfaceprop "metal"
$staticprop

$sequence "idle" "ornament01.smd" activity "ACT_IDLE" 1 fps 5

$collisionmodel "ornament01_phy.smd"
{
    $mass 30.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
	$concave
}