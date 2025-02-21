$modelname "mounts/bear01.mdl"
$model "studio" "../../NPCs/Animals/bear01/ref.smd"

$surfaceprop "flesh"
$contents "solid"
$illumposition 0 0 0 bear

$cdmaterials "models/characters/npc/bear/"

$eyeposition 0 0 70
$maxeyedeflection 90
$mostlyopaque

$attachment "saddle" "body_front" 0.00 5.00 -15.00 rotate 0 90 -180

$sequence "idle01" {
	"../../NPCs/Animals/bear01/anims/idle1.smd"
	activity "ACT_INF_UNARMED_IDLE" 3
	fadein 1
	fadeout 1
	fps 15
}

$sequence "idle02" {
	"../../NPCs/Animals/bear01/anims/idle2.smd"
	activity "ACT_INF_UNARMED_IDLE" 2
	fadein 1
	fadeout 1
	fps 15
}

$sequence "idle03" {
	"../../NPCs/Animals/bear01/anims/idle3.smd"
	activity "ACT_INF_UNARMED_IDLE" 1
	fadein 1
	fadeout 1
	fps 24
}

$sequence "run" {
	"../../NPCs/Animals/bear01/anims/run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 10 LX LY
}

$sequence "jump" "../../NPCs/Animals/bear01/anims/jump.smd" {
	activity "ACT_3PV_HL2MP_JUMP_SHORTSWORD" 1
	fadein 0.2
	fadeout 0.2
	fps 50
}

$sequence "ragdoll" {
	"../../NPCs/Animals/bear01/anims/ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 1
}
