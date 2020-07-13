$modelname "items/staves/staff02.mdl"
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

$attachment "top" "bone1" 0.00 0.00 58.25 rotate 0 0 0
