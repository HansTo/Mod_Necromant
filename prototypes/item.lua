data:extend(
{ 
	-- corps parts
	{
		type = "item",
		name = "necro-biter-brain",
		icon = "__necromant__/graphics/icons/biter-brain.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "d",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-biter-flesh",
		icon = "__necromant__/graphics/icons/flesh.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "e",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-alien-dna",
		icon = "__necromant__/graphics/icons/dna.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "c",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-bones",
		icon = "__necromant__/graphics/icons/bones.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "i-a",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-bones-charcoal",
		icon = "__necromant__/graphics/icons/bone-charcoal.png",
		icon_size = 32,
		RecipeType = "smelting",
		fuel_category = "chemical",
		fuel_value = "3MJ",
		Enabled = true,
		Recipe = true,
		subgroup = "necromant-filter-products",
		order = "h",
		ResultAmount = 2,
		stack_size = 400
	},
	{
		type = "item",
		name = "necro-chitin-fragment",
		icon = "__necromant__/graphics/icons/chitin-fragment.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "g",
		stack_size = 1000
	},
	{
		type = "item",
		name = "necro-chitin",
		icon = "__necromant__/graphics/icons/chitin.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "f",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-enriched-bones",
		icon = "__necromant__/graphics/icons/enriched-bones.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "i-b",
		stack_size = 200
	},
	
	-- poison ammo
	{
		type = "ammo",
		name = "necro-poison-ammo",
		icon = "__necromant__/graphics/icons/poison-ammo.png",
		icon_size = 32,
		--subgroup = "ammo",
		subgroup = "necromant-filter-products",
		order = "aa",
		stack_size = 200,
		ammo_type =
		{
		  category = "bullet",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "instant",
			  source_effects =
			  {
				  type = "create-explosion",
				  entity_name = "explosion-gunshot"
			  },
			  target_effects =
			  {
				{
				  type = "create-entity",
				  entity_name = "explosion-hit"
				},
				{
				  type = "damage",
				  damage = { amount = 6 , type = "physical"}
				},
				{
				  type = "damage",
				  damage = { amount = 10 , type = "poison"}
				},
				{
				  type = "damage",
				  damage = { amount = 8 , type = "explosion"}
				}
			  }
			}
		  }
		},
		magazine_size = 10,
		order = "a[basic-clips]-z",
	},
	
	-- heal
	{
		type = 'capsule',
		name = 'necro-biter-steak',
		subgroup = "necromant-filter-products",
		icon = '__necromant__/graphics/icons/biter-steak.png',
		icon_size = 32,
		stack_size = 100,
		order = "b",
		capsule_action =
		{
		  type = "use-on-self",
		  attack_parameters =
		  {
			type = "projectile",
			ammo_category = "capsule",
			cooldown = 30,
			range = 0,
			ammo_type =
			{
			  category = "capsule",
			  target_type = "position",
			  action =
			  {
				type = "direct",
				action_delivery =
				{
				  type = "instant",
				  target_effects =
				  {
					type = "damage",
					damage = {type = "physical", amount = -30}
				  }
				}
			  }
			}
		  }
		}
	},
	{
		type = 'capsule',
		name = 'necro-heal-potion',
		subgroup = "necromant-filter-products",
		icon = '__necromant__/graphics/icons/heal-potion.png',
		icon_size = 32,
		stack_size = 100,
		order = "ab",
		capsule_action =
		{
		  type = "use-on-self",
		  attack_parameters =
		  {
			type = "projectile",
			ammo_category = "capsule",
			cooldown = 30,
			range = 0,
			ammo_type =
			{
			  category = "capsule",
			  target_type = "position",
			  action =
			  {
				type = "direct",
				action_delivery =
				{
				  type = "instant",
				  target_effects =
				  {
					type = "damage",
					damage = {type = "physical", amount = -200}
				  }
				}
			  }
			}
		  }
		}
	},
	
	-- worms
	{
		type = "item",
		name = "necro-worm-chitin",
		icon = "__necromant__/graphics/icons/worms/worm_chitin.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "g",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-item-worm-stone-wall",
		icon = "__necromant__/graphics/entity/walls/stone-worm-wall.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "h",
		place_result = "necro-worm-stone-wall",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-item-worm-gate",
		icon = "__necromant__/graphics/icons/stone-worm-gate.png",
		icon_size = 32,
		subgroup = "necromant-filter-products",
		order = "i",
		place_result = "necro-worm-gate",
		stack_size = 200
	},
	
	-- fire ball
	{
		type = "gun",
		name = "necro-fireball-launcher",
		icon = "__necromant__/graphics/icons/necro-fireball-launcher.png",
		icon_size = 128,
		subgroup = "necromant-filter-magic-products",
		order = "a",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "necro-staff",
		  movement_slow_down_factor = 0.1,
		  cooldown = 15,
		  projectile_creation_distance = 1.0,
		  range = 20,
		  projectile_center = {-0.17, 0},
		},
		stack_size = 5
	},
	{
		type = "ammo",
		name = "necro-fireball-powder",
		icon = "__necromant__/graphics/icons/fireball-powder.png",
		icon_size = 32,
		ammo_type =
		{
		  range_modifier = 3,
		  cooldown_modifier = 3,
		  target_type = "position",
		  category = "necro-staff",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "projectile",
			  projectile = "necro-fireball",
			  starting_speed = 0.50,
			  --[[source_effects =
			  {
				type = "create-entity",
				entity_name = "explosion-hit"
			  }
			  --]]
			}
		  }
		},
		subgroup = "necromant-filter-magic-products",
		order = "b",
		stack_size = 1000
	},
	{
		type = "item",
		name = "necro-burning_substance",
		icon = "__necromant__/graphics/icons/burning-substance.png",
		icon_size = 32,
		fuel_category = "chemical",
		fuel_value = "5MJ",
		subgroup = "necromant-filter-magic-products",
		order = "c",
		stack_size = 200
	},
	{
		type = "item",
		name = "necro-dried-chemicals",
		icon = "__necromant__/graphics/icons/dried-alien-chemicals.png",
		icon_size = 32,
		subgroup = "necromant-filter-magic-products",
		order = "e",
		stack_size = 200
	}	
}
)
