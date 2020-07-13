
$modelname "monsters/mdl_creature_cyclops.mdl"

$model "studio" "giant03.smd" {

	eyeball "eye_right" "Plane02" 0.000000 -6.374000 109.066004 "tx_cyclops_eye01" 5.826 1 "iris_unused" 5

	flexfile "giant03.vta" 
	{
		defaultflex frame 0
	}

	flexcontroller eyes range -35 35 "eyes_updown"
	flexcontroller eyes range -20 20 "eyes_rightleft"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -1.672 59.365

$eyeposition 0 0 109.006

$cdmaterials "monsters\"

$texturegroup "skinfamilies"
{
	{ "tx_cyclops_body01" "tx_cyclops_head01" }
	{ "tx_cyclops_body02" "tx_cyclops_head02" }
}

$attachment "eyes" "Plane02" 0 109.07 6.37 rotate -90 -90 0
$attachment "forward" "Plane02" 0 0 0 rotate -90 -180 0

$cbox 0 0 0 0 0 0
$bbox -15.362 -34.277 -0.25 18.707 34.277 118.98

$sequence "idle" {
	"idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionmodel "giant03_phy.smd"
{
	$mass 1750
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
