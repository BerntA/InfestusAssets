$modelname "items/staves/staff01.mdl"
$model "studio" "ref.smd"

$surfaceprop "wood"
$illumposition -0.6 -7.724 -6.038
$cdmaterials "models/items/staves/"

$sequence "idle" {
	"ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$attachment "top" "bone1" 0.00 0.00 57.55 rotate 0 0 0

$keyvalues
{
	particles
	{
		effect
		{
			name				"fire_verysmall_01"
			attachment_type		"follow_attachment"
			attachment_point	"top"
		}
	}
}
