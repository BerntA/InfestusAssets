$modelname "objects/stardust.mdl"
$model "studio" "stardust.smd"
$cdmaterials "models/objects/"

$surfaceprop "sand"
$staticprop

$sequence "idle" "idle.smd" activity "ACT_IDLE" 1 fps 1

$collisionmodel "stardust_phys.smd"
{
    $mass 5.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
	$concave
}