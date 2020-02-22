data:extend(
{
  {
    type = "projectile",
    name = "necro-fireball",
    flags = {"not-on-map"},
    acceleration = 0.01,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  --[[
          {
              repeat_count = 50,
              type = "create-smoke",
              entity_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 0.5,
              starting_frame = 3,
              starting_frame_deviation = 3,
              starting_frame_speed = 1,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
          },
		  --]]
          {
            type = "create-entity",
            entity_name = "explosion"
          },
		  {
            type = "create-entity",
            entity_name = "fire-flame",
			initial_ground_flame_count = 5
          },
          {
            type = "damage",
            damage = {amount = 100, type = "fire"}
          },
          {
            type = "create-entity",
            entity_name = "fireball-explosion"
          },
		  
		  {
            type = "nested-result",
            action =
            {
              type = "area",
			  radius = 10,
              perimeter = 10,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 50, type = "fire"}
                  },
				  {
                    type = "damage",
                    damage = {amount = 20, type = "explosion"}
                  },
				  {
					type = "create-fire",
					entity_name = "fire-flame",
					initial_ground_flame_count = 5
				  }
                }
              }
			}
			--[[
            action =
            {
			  -- tree burning
			  type = "area",
			  perimeter = 1,
			  action_delivery =
			  {
				type = "instant",
				target_effects =
				{
					{
						type = "create-sticker",
						sticker = "fire-sticker"
					},
					{
						type = "create-fire",
						entity_name = "fire-flame"
					},
					{
						type = "create-fire",
						entity_name = "fire-flame-on-tree"
					}
				}
			  }
			}
			--]]
		  }
        }
	  }
	},
    light = {intensity = 0.8, size = 40},
    animation =
    {
      filename = "__necromant__/graphics/entity/fireball.png",
      frame_count = 1,
      line_length = 1,
      width = 20,
      height = 20,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__necromant__/graphics/entity/fireball-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  }
}
)
