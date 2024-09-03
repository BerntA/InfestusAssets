$modelname "items/cloaks/cloak02.mdl"
$model "studio" "ref.smd"
$cdmaterials "models/items/cloaks/"

$surfaceprop "default"
$contents "solid"
$illumposition 0 5.968 49.277

$cbox 0 0 0 0 0 0
$bbox -16.892 -21.459 21.48 4.955 21.459 77.074

$texturegroup "skinfamilies"
{
	{ "cloak02_01"      "cloak02_02"      }
	{ "cloak02_01_blue" "cloak02_02_blue" }
}

$jigglebone "JiggleCape01"
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
$jigglebone "JiggleCape02"
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
$jigglebone "JiggleCape03"
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

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
