$modelname "objects/mill_static.mdl"
$model "studio" "mill.smd"
$cdmaterials "models/objects/"
$surfaceprop "wood"
$staticprop

$sequence "idle" "mill_idle.smd" fps 10.00

$collisionmodel "mill_phys.smd"
{
    $mass 850.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
    $concave
}
