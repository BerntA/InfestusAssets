# Magical NPCs - Particle based
These NPCs (can be used on props too) will only render a particle effect, thus they use a simple null model template. Any particle can be used!

### Example QC Segment
```
MagicModel
{
	Alive
	{
		name shade_black
		attachment_point "body"
	}
	Dead
	{
		name mold
		attachment_point "body"
	}
}
```

### Eligible Particles
Generally any particle is eligible, but these are particularly good
```
shade_black
greater_shade_body
lesser_shade_black
lesser_shade_white
mold_active
mold_recede
fire_medium_02
burning_character
```

### Entity Burn FX
Set IgniteModel <value> to enable a dynamic fire effect on the entity, ex:
```
$keyvalues
{
	MagicModel
	{
		Alive
		{
			name "fire_medium_02"
			attachment_point "body"
		}
		Dead
		{
			name "mold_recede"
			attachment_point "body"
		}
	}
	
	IgniteModel 1
}
```

- IgniteModel 1 will enable the effect for corpses as well.
- IgniteModel 2 will only spawn for non corpses.