$modelname "mounts/horse01.mdl"
$model "studio" "horse_01.smd"

$surfaceprop "flesh"
$contents "solid"
$illumposition 0.808 0.448 37.447
$cdmaterials "models/mounts/horse/"

$poseparameter move_yaw -180.00 180.00

$eyeposition 0 0 70
$maxeyedeflection 90
$mostlyopaque

$attachment "saddle" "Bone45" 12.50 -16.00 0.00 rotate 0 -142 -90
$sectionframes 30 302

$ikchain "frfoot" "Bone12" Z 0
$ikchain "flfoot" "Bone26" Z 0
$ikchain "brfoot" "Bone19" Z 0
$ikchain "blfoot" "Bone21" Z 0

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 fps 60
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 fps 60
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 fps 60
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 fps 60
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 fps 60
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  fps 60
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 fps 60
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 fps 60

$sequence "idle" "anims/idle.smd" activity ACT_IDLE_SWORD 1 fps 25.00 loop
$sequence "jump" "anims/jump.smd" activity ACT_3PV_HL2MP_JUMP_SHORTSWORD 1 fps 60.00

$sequence "move" {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_3PV_HL2MP_RUN_SHORTSWORD" 1
}

$sequence "ragdoll" {
	"anims/idle.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}
