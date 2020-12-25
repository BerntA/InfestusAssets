
$modelname "characters/hulk.mdl"

$bodygroup "studio"
{
	studio "zombie_poison_reference.smd"
}

$lod 10
{
	replacemodel "zombie_poison_reference.smd" "zombie_poison_reference_lod1.smd"
	nofacial
}
$lod 20
{
	replacemodel "zombie_poison_reference.smd" "zombie_poison_reference_lod2.smd"
	nofacial
}
$lod 35
{
	replacemodel "zombie_poison_reference.smd" "zombie_poison_reference_lod3.smd"
	nofacial
}
$lod 60
{
	replacemodel "zombie_poison_reference.smd" "zombie_poison_reference_lod4.smd"
	nofacial
}
$shadowlod
{
	replacemodel "zombie_poison_reference.smd" "zombie_poison_reference_lod5.smd"
	nofacial
}

$surfaceprop "flesh"
$contents "solid"
$illumposition 16.252 -0.773 29.87
$eyeposition 0 0 64
$cdmaterials "models/characters/hulk/"

$attachment "eyes" "ValveBiped.Bip01_Spine4" 10.5 0 0 rotate -20 0 -180
$attachment "head" "ValveBiped.Bip01_Spine4" 15 0 0 rotate 0 0 -180
$attachment "chest" "ValveBiped.Bip01_Spine4" -9 0 6 rotate 0 0 0

$cbox 0 0 0 0 0 0
$bbox -19.652 -31.255 -8.499 31.825 31.827 77.397
$skipboneinbbox

$sequence "idle" {
	"idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "walk" {
	"walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 60
	loop
	walkframe 40 LX LY LZ
}

$sequence "run" {
	"run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 17 LX LY LZ
}

$sequence "ragdoll" {
	"ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$weightlist "attacking" {
	"ValveBiped.Bip01" "0"
	"ValveBiped.Bip01_Spine" "1"
	"ValveBiped.Bip01_Spine1" "1"
	"ValveBiped.Bip01_Spine2" "1"
	"ValveBiped.Bip01_Spine4" "1"
	"ValveBiped.Bip01_L_Clavicle" "1"
	"ValveBiped.Bip01_L_UpperArm" "1"
	"ValveBiped.Bip01_L_Forearm" "1"
	"ValveBiped.Bip01_L_Hand" "1"
	"ValveBiped.Bip01_L_Finger1" "1"
	"ValveBiped.Bip01_L_Finger11" "1"
	"ValveBiped.Bip01_L_Finger2" "1"
	"ValveBiped.Bip01_L_Finger21" "1"
	"ValveBiped.Bip01_L_Finger3" "1"
	"ValveBiped.Bip01_L_Finger31" "1"
	"ValveBiped.Bip01_L_Finger32" "1"
	"ValveBiped.Bip01_R_Clavicle" "1"
	"ValveBiped.Bip01_R_UpperArm" "1"
	"ValveBiped.Bip01_R_Forearm" "1"
	"ValveBiped.Bip01_R_Hand" "1"
	"ValveBiped.Bip01_R_Finger3" "1"
	"ValveBiped.Bip01_Pelvis" "0"
	"ValveBiped.Bip01_L_Thigh" "0"
	"ValveBiped.Bip01_L_Calf" "0"
	"ValveBiped.Bip01_L_Foot" "0"
	"ValveBiped.Bip01_L_Toe0" "0"
	"ValveBiped.Bip01_R_Thigh" "0"
	"ValveBiped.Bip01_R_Calf" "0"
	"ValveBiped.Bip01_R_Foot" "0"
	"ValveBiped.Bip01_R_Toe0" "0"
}

$sequence "melee" {
	"melee01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 40
	//walkframe 46 LX LY LZ
	weightlist "attacking"
}

// todo, add death anims... + move yaw?
