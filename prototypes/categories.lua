data:extend(
{ 
	{
		type = "recipe-category",
		name = "necro-recipes"
	},
	{
		type = "item-group",
		name = "necro-recipes-group",
		order = "z",
		icon = "__necromant__/graphics/item-group.png",
		icon_size = 32
	},

	-- group for filter & chests
	{
		type = "item-group",
		name = "necromant",
		order = "z",
		icon = "__necromant__/graphics/item-group.png",
		icon_size = 32
	},
	{
		type = "item-subgroup",
		name = "necromant-filter-magic-products",
		group = "necromant",
		order = "d"
	},
	{
		type = "item-subgroup",
		name = "necromant-filter-products",
		group = "necromant",
		order = "c"
	},
	{
		type = "item-subgroup",
		name = "necromant-filter-processing",
		group = "necromant",
		order = "a"
	},
	
	-- recipe group
	{
		type = "item-subgroup",
		name = "necro-spitter-processing",
		group = "necro-recipes-group",
		order = "a"
	},
	{
		type = "item-subgroup",
		name = "necro-biter-processing",
		group = "necro-recipes-group",
		order = "b"
	},
	{
		type = "item-subgroup",
		name = "necro-worm-processing",
		group = "necro-recipes-group",
		order = "c"
	},
	{
		type = "item-subgroup",
		name = "necro-dna",
		group = "necro-recipes-group",
		order = "d"
	},
	{
		type = "item-subgroup",
		name = "necro-products",
		group = "necro-recipes-group",
		order = "e"
	},
	{
		type = "item-subgroup",
		name = "necro-fluids",
		group = "necro-recipes-group",
		order = "k"
	},
	{
		type = "item-subgroup",
		name = "necro-fireball",
		group = "necro-recipes-group",
		order = "f"
	},
	{
		type = "item-subgroup",
		name = "necro-magic",
		group = "necro-recipes-group",
		order = "g"
	},	
}
)