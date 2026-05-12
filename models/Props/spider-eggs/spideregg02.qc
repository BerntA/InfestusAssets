$modelname "objects/spideregg02.mdl"
$model "studio" "spiderEgg_2.smd"
$cdmaterials "models/objects/"

$surfaceprop "flesh"
$staticprop

$sequence "idle" "idle.smd" activity "ACT_IDLE" 1 fps 1

$collisionmodel "spiderEgg_phys_2.smd"
{
    $mass 10.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
	$concave
}