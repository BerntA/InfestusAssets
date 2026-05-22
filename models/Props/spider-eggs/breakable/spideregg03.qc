$modelname "objects/spideregg03_breakable.mdl"

$bodygroup "broken"
{
	studio "spideregg03.smd"
	studio "spideregg03_broken.smd"
}

$cdmaterials "models/objects/"
$surfaceprop "flesh"

$sequence "idle" "anims/spideregg03_idle.smd" activity "ACT_IDLE" 1 fps 20
$sequence "damage01" "anims/spideregg03_damage1.smd" activity "ACT_BIG_FLINCH" 1 fps 30
$sequence "damage02" "anims/spideregg03_damage2.smd" activity "ACT_BIG_FLINCH" 1 fps 30

$collisionmodel "spideregg03_phys.smd"
{
    $mass 10.00
    $inertia 1.00
    $damping 0.00
    $rotdamping 0.00
	$concave
}