$modelname "objects/mill.mdl"
$model "studio" "mill.smd"
$cdmaterials "models/objects/"
$surfaceprop "wood"

$sequence "spin" "mill_spin.smd" fps 60.00 loop

$collisionmodel "mill_phys.smd"
{
    $mass 850.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
    $concave
}
