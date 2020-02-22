if data.raw.item["alien-artifact"] and settings.startup["necro-setting-alien-artifact-creation"].value == true then
	data:extend(
	{
		{
			type = "recipe",
			name = "necro-alien-artifact-from-dried-chemicals-recipe",
			subgroup = "necro-magic",
			energy_required = 5,
			enabled = false,
			ingredients =
			{
			  {"necro-dried-chemicals", 2}
			},
			result = "alien-artifact",
			icon = "__necromant__/graphics/icons/alien-artifact.png",
			icon_size = 32,
			order = "d-b"
		},
		-- technology
		{
			type = "technology",
			name = "necro-tech-alien-chemicals",
			icon = "__necromant__/graphics/icons/alien-chemicals.png",
			icon_size = 32,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "necro-alien-chemicals-from-brain"
				},
				{
					type = "unlock-recipe",
					recipe = "necro-alien-chemicals-from-flesh"
				},
				{
					type = "unlock-recipe",
					recipe = "necro-dried-chemicals-recipe"
				},
				{
					type = "unlock-recipe",
					recipe = "necro-alien-artifact-from-dried-chemicals-recipe"
				}
			},
			prerequisites = {"necro-tech-process-small-biter-corpse"},
			unit =
			{
				count = 50,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1}
				},
				time = 25
			},
			order = "z-d-a"
		}
	})
else
	-- technology without alien artifact
	data:extend(
	{
		{
			type = "technology",
			name = "necro-tech-alien-chemicals",
			icon = "__necromant__/graphics/icons/alien-chemicals.png",
			icon_size = 32,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "necro-alien-chemicals-from-brain"
				},
				{
					type = "unlock-recipe",
					recipe = "necro-alien-chemicals-from-flesh"
				},
				{
					type = "unlock-recipe",
					recipe = "necro-dried-chemicals-recipe"
				}
			},
			prerequisites = {"necro-tech-process-small-biter-corpse"},
			unit =
			{
				count = 50,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1}
				},
				time = 25
			},
			order = "z-d-a"
		}
	})
end
