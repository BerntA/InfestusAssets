$modelname "objects/lamppost02.mdl"
$model "studio" "lamppost02.smd"
$cdmaterials "models/objects/"
$surfaceprop "wood"
$staticprop

$sequence "idle" "lamppost02_idle.smd" activity "ACT_IDLE" 1 fps 5

$collisionmodel "lamppost02_phy.smd"
{
    $mass 85.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
    $concave
}

$texturegroup skinfamilies
{
    { "lamppost02"    "lamp_off" }
    { "lamppost02"    "lamp_on" }
}
