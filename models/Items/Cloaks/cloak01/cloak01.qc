$modelname "items/cloaks/cloak01.mdl"
$model "studio" "ref.smd"
$cdmaterials "models/items/cloaks/"

$surfaceprop "default"
$contents "solid"
$illumposition 0 5.968 49.277

$cbox 0 0 0 0 0 0
$bbox -16.892 -21.459 21.48 4.955 21.459 77.074

$texturegroup skinfamilies
{
	{ "cloak01" }
	{ "cloak01_fire" }
	{ "cloak01_frost" }
}

// REMEMBER TO SET ROLL TO 180 FOR EVERY BONE @ BONE DATA

$jigglebone "CapeJiggle01"
{
	is_flexible
	{
		length 20
		tip_mass 5
		pitch_stiffness 80
		pitch_damping 4
		yaw_stiffness 80
		yaw_damping 4
		pitch_constraint -15 15
		pitch_friction 0
		yaw_constraint -15 15
		yaw_friction 0
		angle_constraint 10
		along_stiffness 100
		along_damping 0
		pitch_bounce 0
		yaw_bounce 0
	}
}
$jigglebone "CapeJiggle02"
{
	is_flexible
	{
		length 30
		tip_mass 5
		pitch_stiffness 80
		pitch_damping 4
		yaw_stiffness 80
		yaw_damping 4
		pitch_constraint -15 15
		pitch_friction 0
		yaw_constraint -15 15
		yaw_friction 0
		angle_constraint 10
		along_stiffness 100
		along_damping 0
		pitch_bounce 0
		yaw_bounce 0
	}
}
$jigglebone "CapeJiggle03"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 80
		pitch_damping 4
		yaw_stiffness 80
		yaw_damping 4
		pitch_constraint -15 15
		pitch_friction 0
		yaw_constraint -15 15
		yaw_friction 0
		angle_constraint 10
		along_stiffness 100
		along_damping 0
		pitch_bounce 0
		yaw_bounce 0
	}
}
$jigglebone "CapeJiggle04"
{
	is_flexible
	{
		length 40
		tip_mass 5
		pitch_stiffness 80
		pitch_damping 4
		yaw_stiffness 80
		yaw_damping 4
		pitch_constraint -15 15
		pitch_friction 0
		yaw_constraint -15 15
		yaw_friction 0
		angle_constraint 10
		along_stiffness 100
		along_damping 0
		pitch_bounce 0
		yaw_bounce 0	
	}
}
$jigglebone "CapeJiggle05"
{
	is_flexible
	{
		length 50
		tip_mass 5
		pitch_stiffness 80
		pitch_damping 4
		yaw_stiffness 80
		yaw_damping 4
		pitch_constraint -15 15
		pitch_friction 0
		yaw_constraint -15 15
		yaw_friction 0
		angle_constraint 10
		along_stiffness 100
		along_damping 0
		pitch_bounce 0
		yaw_bounce 0
	}
}

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
