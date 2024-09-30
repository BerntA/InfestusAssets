$modelname "items/maces/mace10.mdl"
$model "studio" "ref.smd"
$surfaceprop "metal"
$cdmaterials "models/items/maces/"

$jigglebone "joint5"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 100.000001
	}
}
$jigglebone "joint6"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint7"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint8"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint9"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint10"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint11"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint12"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 70
	}
}
$jigglebone "joint13"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 79.999998
	}
}
$jigglebone "joint14"
{
	is_rigid
	{
		length 20
		tip_mass 900
		angle_constraint 90.000003
	}
}

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}