$modelname "mounts/wolf01.mdl"

$scale 1.2
$model "studio" "wolf.smd"

$surfaceprop "flesh"
$contents "solid"
$cdmaterials "models/characters/npc/wolf/"

$texturegroup "skinfamilies"
{
	{ "wolf01"  }
	{ "wolf02"  }
	{ "wolf03"  }
}

$cbox 0 0 0 0 0 0
$poseparameter move_yaw -180.00 180.00
$attachment "eyes" "JawConnect" 2.00 5.00 0.00 rotate -0 180 -180
$attachment "saddle" "Spine2" 5.00 5.00 0.00 rotate 0 0 -90
$eyeposition -0.000 -0.000 25.000
$maxeyedeflection 90
$mostlyopaque

$ikchain "frfoot" "FrontRightPaw" Z 0
$ikchain "flfoot" "FrontLeftPaw" Z 0
$ikchain "brfoot" "BackRightPaw01" Z 0
$ikchain "blfoot" "BackLeftPaw" Z 0

$animation a_RunS "anims/run_s" loop LX LY startloop 0 rotateto -180 fps 40
$animation a_RunSE "anims/run_se" loop LX LY startloop 0 rotateto -135 fps 40
$animation a_RunE "anims/run_e" loop LX LY startloop 0 rotateto -90 fps 40
$animation a_RunNE "anims/run_ne" loop LX LY startloop 0 rotateto -45 fps 40
$animation a_RunN "anims/run_n" loop LX LY startloop 0 rotateto 0 fps 40
$animation a_RunNW "anims/run_nw" loop LX LY startloop 0 rotateto 45  fps 40
$animation a_RunW "anims/run_w" loop LX LY startloop 0 rotateto 90 fps 40
$animation a_RunSW "anims/run_sw" loop LX LY startloop 0 rotateto 135 fps 40

$sequence "idle01" {
	"anims/idle01.smd"
	activity "ACT_IDLE_SWORD" 1
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle02" {
	"anims/idle02.smd"
	activity "ACT_IDLE_SWORD" 1
	fadein 1
	fadeout 1
	fps 13
	loop
}

$sequence "idle03" {
	"anims/idle03.smd"
	activity "ACT_IDLE_SWORD" 1
	fadein 1
	fadeout 1
	fps 8
	loop
}

$sequence "jump" "anims/jump.smd" activity ACT_3PV_HL2MP_JUMP_SHORTSWORD 1 fps 60.00

$sequence "run" {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9
	blend "move_yaw" -180 180
	"ACT_3PV_HL2MP_RUN_SHORTSWORD" 1	
}

$sequence "ragdoll" {
	"anims/ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}
