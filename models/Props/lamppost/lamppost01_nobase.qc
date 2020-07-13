$modelname "objects/lamppost01_nobase.mdl"
$model "studio" "lamppost01_nobase.smd"
$cdmaterials "models/objects/"
$surfaceprop "metal"
$staticprop

$sequence "idle" "idle.smd" activity "ACT_IDLE" 1 fps 5

$collisionmodel "lamppost01_nobase_phy.smd"
{
    $mass 85.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
    $concave
}