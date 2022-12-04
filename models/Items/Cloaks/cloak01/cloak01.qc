$modelname "items/cloaks/cloak01.mdl"
$model "studio" "ref.smd"
$cdmaterials "models/items/cloaks/"

$surfaceprop "default"
$contents "solid"
$illumposition 0 5.968 49.277

$cbox 0 0 0 0 0 0
$bbox -16.892 -21.459 21.48 4.955 21.459 77.074

$jigglebone "Cape_L1"
{
	is_flexible
	{
		length 20
		tip_mass 10
		pitch_stiffness 30
		pitch_damping 5
		yaw_stiffness 40
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -60.000002 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 15
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 74.999999
	}
}
$jigglebone "Cape_L2"
{
	is_flexible
	{
		length 25
		tip_mass 12
		pitch_stiffness 60
		pitch_damping 5
		yaw_stiffness 80
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 15
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 90.000003
	}
}
$jigglebone "Cape_R1"
{
	is_flexible
	{
		length 20
		tip_mass 10
		pitch_stiffness 30
		pitch_damping 5
		yaw_stiffness 40
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -60.000002 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -15 19.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 74.999999
	}
}
$jigglebone "Cape_R2"
{
	is_flexible
	{
		length 25
		tip_mass 12
		pitch_stiffness 60
		pitch_damping 5
		yaw_stiffness 80
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -15 19.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 90.000003
	}
}

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
