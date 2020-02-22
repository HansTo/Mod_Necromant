if settings.startup["necro-setting-fireball-launcher-and-towers"].value == true then
data:extend(
{  
	-- damage upgrades ===========================
	-- fireball ===
  {
    type = "technology",
    name = "necro-fireball-damage-1",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-tech-fireball"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-2",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-3",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-2"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-4",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-3"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-5",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-4"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-6",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-5"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 2},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-7",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-6"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 2},
		{"logistic-science-pack", 2},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-8",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-7"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 3},
		{"logistic-science-pack", 2},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-9",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-8"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-10",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-9"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-11",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-10"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 3},
		{"logistic-science-pack", 2},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-12",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-11"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-13",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-12"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-14",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-13"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-15",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-14"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 4},
		{"logistic-science-pack", 3},
		{"chemical-science-pack", 1},
		{"military-science-pack", 2},
		{"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-16",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-15"},
    unit =
    {
      count = 4000,
      ingredients =
      {
        {"automation-science-pack", 4},
		{"logistic-science-pack", 3},
		{"chemical-science-pack", 1},
		{"military-science-pack", 2},
		{"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-17",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-16"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-18",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-17"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-19",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.2
      }
    },
    prerequisites = {"necro-fireball-damage-18"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
  {
    type = "technology",
    name = "necro-fireball-damage-20",
    icon = "__necromant__/graphics/icons/fireball.png",
	icon_size = 32,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "necro-staff",
        modifier = 0.5
      }
    },
    prerequisites = {"necro-fireball-damage-19"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"automation-science-pack", 5},
		{"logistic-science-pack", 4},
		{"chemical-science-pack", 2},
		{"military-science-pack", 3},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "z-e-a"
  },
}
)
end