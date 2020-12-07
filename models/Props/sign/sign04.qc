$modelname "objects/sign04.mdl"
$model "studio" "sign04.smd"
$cdmaterials "models/objects/"
$surfaceprop "wood"
$staticprop

$sequence "idle" "idle.smd" activity "ACT_IDLE" 1 fps 5

$collisionmodel "sign_phys.smd"
{
    $mass 85.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
    $concave
}