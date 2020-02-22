-- various items
data:extend(
{  
	{
		type = "technology",
		name = "necro-tech-biter-steak",
		icon = "__necromant__/graphics/icons/biter-steak.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-biter-steak"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {{"automation-science-pack", 1}},
			time = 10
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "necro-tech-bone-charcoal",
		icon = "__necromant__/graphics/icons/bone-charcoal.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-bone-charcoal"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {{"automation-science-pack", 1}},
			time = 20
		},
		order = "z-a-a"
	},
	{
		type = "technology",
		name = "necro-tech-enriched-bones",
		icon = "__necromant__/graphics/icons/enriched-bones.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-enriched-bones"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-enriched-bones-from-fish"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-enriched-bones-charcoal"
			}
		},
		prerequisites = {"necro-tech-bone-charcoal"},
		unit =
		{
			count = 200,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "z-a-b"
	},
	{
		type = "technology",
		name = "necro-tech-chitin-processing",
		icon = "__necromant__/graphics/icons/chitin.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-chitin-processing"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse", },
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 20
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "necro-tech-chitin-to-bones",
		icon = "__necromant__/graphics/icons/bones.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-chitin-to-bones"
			}
		},
		prerequisites = {"necro-tech-chitin-processing"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 25
		},
		order = "z-a"
	},
	{
		type = "technology",
		name = "necro-tech-chitin-to-worm-chitin",
		icon = "__necromant__/graphics/icons/worms/worm_chitin.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-chitin-to-worm-chitin"
			}
		},
		prerequisites = {"necro-tech-chitin-processing", "necro-tech-process-small-worm-corpse", "necro-tech-enriched-bones"},
		unit =
		{
			count = 300,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 25
		},
		order = "z-a"
	},
	-- wall
	{
		type = "technology",
		name = "necro-tech-worm-wall",
		icon = "__necromant__/graphics/entity/walls/stone-worm-wall.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-worm-stone-wall-recipe"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-worm-gate-recipe"
			}
		},
		prerequisites = {"necro-tech-process-small-worm-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
		order = "z-f-e"
	},
})

-- alien fluids & results =============
data:extend(
{ 	

	-- necro-tech-alien-chemicals moved to recipe-artifacts.lua
	-- alien chemical unlock
	{
		type = "technology",
		name = "necro-tech-alien-chemicals-results",
		icon = "__necromant__/graphics/icons/alien-chemicals-results.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-chemicals-results"
			}
		},
		prerequisites = {"necro-tech-alien-chemicals"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "z-d-a"
	},
	-- alien poison from protein
	{
		type = "technology",
		name = "necro-tech-alien-poison-from-protein",
		icon = "__necromant__/graphics/icons/alien-poison.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-poison-from-protein"
			}
		},
		prerequisites = {"necro-tech-alien-chemicals-results"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 3},
				{"logistic-science-pack", 2},
				{"production-science-pack", 1},
			},
			time = 30
		},
		order = "z-d-c"
	},
	-- alien heal potion
	{
		type = "technology",
		name = "necro-tech-heal-potion",
		icon = "__necromant__/graphics/icons/heal-potion.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-recipe-heal-potion"
			}
		},
		prerequisites = {"necro-tech-alien-chemicals-results", "necro-tech-biter-steak"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 20
		},
		order = "z-d-d"
	},
	-- alien poison ammo
	{
		type = "technology",
		name = "necro-tech-poison-ammo",
		icon = "__necromant__/graphics/icons/poison-ammo.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-recipe-poison-ammo"
			}
		},
		prerequisites = {"necro-tech-alien-chemicals-results", "military-2"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 3},
				{"logistic-science-pack", 2},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
			},
			time = 30
		},
		order = "z-d-f"
	},
})

-- fireball ===============================
if settings.startup["necro-setting-fireball-launcher-and-towers"].value == true then
data:extend(
{
	{
		type = "technology",
		name = "necro-tech-fireball",
		icon = "__necromant__/graphics/icons/fireball.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-fireball-launcher-recipe"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-fireball-powder-recipe"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-burning-substance-recipe-charcoal"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-burning-substance-recipe-coal"
			}
		},
		prerequisites = {"necro-tech-bone-charcoal", "necro-tech-alien-chemicals"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
		order = "z-e-a"
	},
	
	-- fireball towers =============
	{
		type = "technology",
		name = "necro-tech-fireball-tower",
		icon = "__necromant__/graphics/icons/fireball-tower.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-fireball-tower-recipe"
			}
		},
		prerequisites = {"necro-tech-fireball", "necro-tech-worm-wall", "turrets"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 5},
				{"logistic-science-pack", 3},
				{"military-science-pack", 1}
			},
			time = 25
		},
		order = "z-e-b"
	},
	{
		type = "technology",
		name = "necro-tech-fireball-artillery",
		icon = "__necromant__/graphics/icons/fireball-artillery.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-fireball-artillery-recipe"
			}
		},
		prerequisites = {"necro-tech-fireball-tower", "military-3"},
		unit =
		{
			count = 500,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 30
		},
		order = "z-e-c"
	}
})
end


-- spitters, biters and worms
data:extend(
{
	-- alien corpses =============
	-- biter
	{
		type = "technology",
		name = "necro-tech-process-small-biter-corpse",
		icon = "__necromant__/graphics/icons/biters/small-biter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-small-biter-corpse"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-brain"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-flesh"
			}
		},
		unit =
		{
			count = 20,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 10
		},
		order = "z-b-a"
	},
	{
		type = "technology",
		name = "necro-tech-process-medium-biter-corpse",
		icon = "__necromant__/graphics/icons/biters/medium-biter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-medium-biter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 20
		},
		order = "z-b-b"
	},
	{
		type = "technology",
		name = "necro-tech-process-big-biter-corpse",
		icon = "__necromant__/graphics/icons/biters/big-biter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-big-biter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-medium-biter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "z-b-c"
	},
	{
		type = "technology",
		name = "necro-tech-process-behemoth-biter-corpse",
		icon = "__necromant__/graphics/icons/biters/behemoth-biter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-behemoth-biter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-big-biter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 3},
				{"logistic-science-pack", 2},
				{"chemical-science-pack", 1}
			},
			time = 20
		},
		order = "z-b-d"
	},

	-- spitter
	{
		type = "technology",
		name = "necro-tech-process-small-spitter-corpse",
		icon = "__necromant__/graphics/icons/spitters/small-spitter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-small-spitter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse"},
		unit =
		{
			count = 20,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 10
		},
		order = "z-c-a"
	},
	{
		type = "technology",
		name = "necro-tech-process-medium-spitter-corpse",
		icon = "__necromant__/graphics/icons/spitters/medium-spitter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-medium-spitter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-small-spitter-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 20
		},
		order = "z-c-b"
	},
	{
		type = "technology",
		name = "necro-tech-process-big-spitter-corpse",
		icon = "__necromant__/graphics/icons/spitters/big-spitter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-big-spitter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-medium-spitter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "z-c-c"
	},
	{
		type = "technology",
		name = "necro-tech-process-behemoth-spitter-corpse",
		icon = "__necromant__/graphics/icons/spitters/behemoth-spitter-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-behemoth-spitter-corpse"
			}
		},
		prerequisites = {"necro-tech-process-big-spitter-corpse"},
		unit =
		{
			count = 50,
			ingredients = {
				{"automation-science-pack", 3},
				{"logistic-science-pack", 2},
				{"chemical-science-pack", 1}
			},
			time = 20
		},
		order = "z-c-d"
	},
	
	-- worm
	{
		type = "technology",
		name = "necro-tech-process-small-worm-corpse",
		icon = "__necromant__/graphics/icons/worms/small-worm-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-small-worm-corpse"
			}
		},
		prerequisites = {"necro-tech-process-small-biter-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 10
		},
		order = "z-f-a"
	},
	{
		type = "technology",
		name = "necro-tech-process-medium-worm-corpse",
		icon = "__necromant__/graphics/icons/worms/medium-worm-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-medium-worm-corpse"
			}
		},
		prerequisites = {"necro-tech-process-small-worm-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 15
		},
		order = "z-f-b"
	},
	{
		type = "technology",
		name = "necro-tech-process-big-worm-corpse",
		icon = "__necromant__/graphics/icons/worms/big-worm-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-big-worm-corpse"
			}
		},
		prerequisites = {"necro-tech-process-medium-worm-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
		order = "z-f-c"
	},
	{
		type = "technology",
		name = "necro-tech-process-behemoth-worm-corpse",
		icon = "__necromant__/graphics/icons/worms/behemoth-worm-processing.png",
		icon_size = 32,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-process-behemoth-worm-corpse"
			}
		},
		prerequisites = {"necro-tech-process-big-worm-corpse"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
		order = "z-f-d"
	},

}

)

-- experimental
if settings.startup["necro-setting-experimental"].value == true then
data:extend(
{
	-- DNA 1
	{
		type = "technology",
		name = "necro-tech-dna1",
		icon = "__necromant__/graphics/stomach1.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-fish"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-wood"
			}
		},
		prerequisites = {"necro-tech-bone-charcoal", "necro-tech-alien-chemicals"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
--		order = "z-e-a"
	},
	-- DNA 2
	{
		type = "technology",
		name = "necro-tech-dna2",
		icon = "__necromant__/graphics/stomach2.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-bones"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-flesh"
			}
		},
		prerequisites = {"necro-tech-dna1","necro-tech-alien-poison-from-protein"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
--		order = "z-e-a"
	},
	-- DNA 3
	{
		type = "technology",
		name = "necro-tech-dna3",
		icon = "__necromant__/graphics/stomach3.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-brain"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-steak"
			}
		},
		prerequisites = {"necro-tech-dna2"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
--		order = "z-e-a"
	},
	-- DNA 4
	{
		type = "technology",
		name = "necro-tech-dna4",
		icon = "__necromant__/graphics/stomach4.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-chitin"
			},
			{
				type = "unlock-recipe",
				recipe = "necro-alien-dna-from-ebones"
			}
		},
		prerequisites = {"necro-tech-dna3"},
		unit =
		{
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 20
		},
--		order = "z-e-a"
	},


})
end