$modelname "characters/anims/zombie.mdl"

$surfaceprop "flesh"
$contents "solid"
$cdmaterials "models/player/"

$eyeposition 0 0 70
$cbox 0 0 0 0 0 0
$bbox -13 -13 0  13 13 72

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -0.533612 38.566914 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 3.345131 -2.981898 4.766436 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.995842 0 0 0 -1.651035 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.520294 0 0 0 5.575223 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.921471 0 0 0 10.680564 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.306358 0.000001 0 0 23.268329 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.602005 -0.000015 0 0 23.206684 0 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 1.999992 -2.999993 0 0 -75.999815 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.059528 0.977921 -1.937661 73.711716 169.030912 -95.200891 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028136 0 0 -0.680903 -33.62053 93.606062 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692547 0 0 0.00001 -3.458889 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481674 0 -0.000008 2.217357 2.063794 -89.381017 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676084 -1.712437 0 0 -89.999886 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.059525 0.977922 1.937661 -73.711477 169.030858 91.085279 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.02814 0.000004 0 2.957034 -33.51149 -90.17519 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692556 -0.000001 0.000004 -0.00007 -3.458889 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481676 0 -0.000034 -2.217934 2.063851 89.856514 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676081 -1.712433 0 0 89.999914 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890445 0 0 2.970156 -90.299008 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.84815 0 0 0 1.959401 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525227 -0.000001 0 2.336465 -61.400334 2.212133 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.87943 0.000006 0 -0.168908 -33.48211 -4.660095 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890445 0 0 2.970156 -89.700792 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848125 0 0 0 1.959459 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525223 0 0 -2.336522 -61.400334 -1.599355 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879436 0.000002 -0.000001 -0.16908 -33.482045 -0.418087 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859701 -0.142395 -1.191972 8.719786 -50.412899 -27.452933 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312561 -0.000002 -0.000001 0.553654 -25.194109 0.000072 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942322 0.04678 -0.431441 4.201213 -46.446652 -8.881647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539089 0.000002 0 0.25554 -14.197733 0.000062 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196316 0.000002 0 0.421643 -24.68304 0.000061 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.881367 0.214699 0.400256 1.812723 -29.790932 5.025069 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719578 0.000008 0 0.286707 -20.9981 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209171 -0.000004 0 0.16014 -12.398921 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.871279 0.117432 1.300898 -1.889329 -26.576526 20.194697 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719421 -0.000004 -0.000002 0.292552 -20.798199 -0.000067 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099648 -0.000006 -0.000002 0.186323 -13.998743 -0.000067 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.838825 -0.30027 1.31277 -38.37648 -41.260408 -71.67748 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789776 0.000004 0.000002 -0.123705 13.099597 0.000067 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207005 0.000002 0 -0.18914 20.799171 0.000065 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859657 -0.132565 1.193105 -9.083903 -50.365354 27.452648 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312565 0.000002 0 -0.683488 -25.191362 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.94228 0.050331 0.431039 -4.543843 -46.421336 8.880731 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539093 0.000002 0.000001 -0.335412 -14.196128 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196312 -0.000001 0 -0.553651 -24.680622 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.881327 0.211357 -0.402024 -2.048898 -29.776619 -5.025814 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719578 0.000011 0 -0.434531 -20.995703 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209175 0 0 -0.242877 -12.397669 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.871244 0.106621 -1.301828 1.676475 -26.58925 -20.195963 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719425 0 0.000001 -0.443295 -20.795571 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099667 -0.000002 0.000002 -0.282408 -13.997143 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.838803 -0.311188 -1.310232 38.062107 -41.541053 71.507081 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.78978 0.000004 0 0.187758 13.098726 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207003 0 0 0.286882 20.797965 -0.000003 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Anim_Attachment_RH"

$poseparameter "move_yaw" -90 90 loop 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$weightlist "attacking" {
	"ValveBiped.Bip01_Pelvis" "0.0"
	"ValveBiped.Bip01_Spine" "0.0"
	"ValveBiped.Bip01_Spine1" "0.0"
	"ValveBiped.Bip01_Spine2" "0.0"
	"ValveBiped.Bip01_Spine4" "1.0"
	"ValveBiped.Bip01_Neck1" "1.0"
	"ValveBiped.Bip01_Head1" "1.0"
	"ValveBiped.forward" "0.0"
	"ValveBiped.Bip01_R_Clavicle" "1.0"
	"ValveBiped.Bip01_R_UpperArm" "1.0"
	"ValveBiped.Bip01_R_Forearm" "1.0"
	"ValveBiped.Bip01_R_Hand" "1.0"
	"ValveBiped.Anim_Attachment_RH" "1.0"
	"ValveBiped.Bip01_L_Clavicle" "1.0"
	"ValveBiped.Bip01_L_UpperArm" "1.0"
	"ValveBiped.Bip01_L_Forearm" "1.0"
	"ValveBiped.Bip01_L_Hand" "1.0"
	"ValveBiped.Anim_Attachment_LH" "1.0"
	"ValveBiped.Bip01_R_Thigh" "0.0"
	"ValveBiped.Bip01_R_Calf" "0.0"
	"ValveBiped.Bip01_R_Foot" "0.0"
	"ValveBiped.Bip01_R_Toe0" "0.0"
	"ValveBiped.Bip01_L_Thigh" "0.0"
	"ValveBiped.Bip01_L_Calf" "0.0"
	"ValveBiped.Bip01_L_Foot" "0.0"
	"ValveBiped.Bip01_L_Toe0" "0.0"
	"ValveBiped.Bip01_L_Finger4" "1.0"
	"ValveBiped.Bip01_L_Finger41" "1.0"
	"ValveBiped.Bip01_L_Finger3" "1.0"
	"ValveBiped.Bip01_L_Finger31" "1.0"
	"ValveBiped.Bip01_L_Finger32" "1.0"
	"ValveBiped.Bip01_L_Finger2" "1.0"
	"ValveBiped.Bip01_L_Finger21" "1.0"
	"ValveBiped.Bip01_L_Finger22" "1.0"
	"ValveBiped.Bip01_L_Finger1" "1.0"
	"ValveBiped.Bip01_L_Finger11" "1.0"
	"ValveBiped.Bip01_L_Finger12" "1.0"
	"ValveBiped.Bip01_L_Finger0" "1.0"
	"ValveBiped.Bip01_L_Finger01" "1.0"
	"ValveBiped.Bip01_L_Finger02" "1.0"
	"ValveBiped.Bip01_R_Finger4" "1.0"
	"ValveBiped.Bip01_R_Finger41" "1.0"
	"ValveBiped.Bip01_R_Finger3" "1.0"
	"ValveBiped.Bip01_R_Finger31" "1.0"
	"ValveBiped.Bip01_R_Finger32" "1.0"
	"ValveBiped.Bip01_R_Finger2" "1.0"
	"ValveBiped.Bip01_R_Finger21" "1.0"
	"ValveBiped.Bip01_R_Finger22" "1.0"
	"ValveBiped.Bip01_R_Finger1" "1.0"
	"ValveBiped.Bip01_R_Finger11" "1.0"
	"ValveBiped.Bip01_R_Finger12" "1.0"
	"ValveBiped.Bip01_R_Finger0" "1.0"
	"ValveBiped.Bip01_R_Finger01" "1.0"
	"ValveBiped.Bip01_R_Finger02" "1.0"
}

$include "shared.qci"
