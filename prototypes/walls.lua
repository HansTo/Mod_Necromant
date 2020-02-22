data:extend(
{

  {
    type = "wall",
    name = "necro-worm-stone-wall",
    icon = "__necromant__/graphics/entity/walls/stone-worm-wall.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 0.5, result = "necro-item-worm-stone-wall"},
    fast_replaceable_group = "wall",
    max_health = 900,
    repair_speed_modifier = 2,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    -- this kind of code can be used for having walls mirror the effect
    -- there can be multiple reaction items
    --attack_reaction =
    --{
      --{
        ---- how far the mirroring works
        --range = 2,
        ---- what kind of damage triggers the mirroring
        ---- if not present then anything triggers the mirroring
        --damage_type = "physical",
        ---- caused damage will be multiplied by this and added to the subsequent damages
        --reaction_modifier = 0.1,
        --action =
        --{
          --type = "direct",
          --action_delivery =
          --{
            --type = "instant",
            --target_effects =
            --{
              --type = "damage",
              ---- always use at least 0.1 damage
              --damage = {amount = 0.1, type = "physical"}
            --}
          --}
        --},
      --}
    --},
    connected_gate_visualization =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20
      },
      {
        type = "impact",
        decrease = 45,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 70
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-single.png",
            priority = "extra-high",
            width = 32,
            height = 46,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -6)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 50,
            height = 32,
            repeat_count = 2,
            shift = util.by_pixel(10, 16),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-single-shadow.png",
              priority = "extra-high",
              width = 98,
              height = 60,
              repeat_count = 2,
              shift = util.by_pixel(10, 17),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__necromant__/graphics/entity/walls/stone-worm-wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 32,
              height = 68,
              variation_count = 5,
              line_length = 5,
              shift = util.by_pixel(0, 8)
            },
            {
              filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
              priority = "extra-high",
              width = 50,
              height = 58,
              repeat_count = 5,
              shift = util.by_pixel(10, 28),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/wall/hr-wall-vertical-shadow.png",
                priority = "extra-high",
                width = 98,
                height = 110,
                repeat_count = 5,
                shift = util.by_pixel(10, 29),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        }
      },
      straight_horizontal =
      {
        layers =
          {
            {
              filename = "__necromant__/graphics/entity/walls/stone-worm-wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 50,
              variation_count = 6,
              line_length = 6,
              shift = util.by_pixel(0, -4)
            },
            {
            filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 36,
            repeat_count = 6,
            shift = util.by_pixel(14, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-horizontal-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 68,
              repeat_count = 6,
              shift = util.by_pixel(14, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-corner-right-down.png",
            priority = "extra-high",
            width = 32,
            height = 64,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 6)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(14, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-corner-right-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 120,
              repeat_count = 2,
              shift = util.by_pixel(17, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-corner-left-down.png",
            priority = "extra-high",
            width = 32,
            height = 68,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 6)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
            priority = "extra-high",
            width = 54,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(8, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-corner-left-shadow.png",
              priority = "extra-high",
              width = 102,
              height = 120,
              repeat_count = 2,
              shift = util.by_pixel(9, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 68,
            variation_count = 4,
            line_length = 4,
            shift = util.by_pixel(0, 6)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 60,
            repeat_count = 4,
            shift = util.by_pixel(14, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-t-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 120,
              repeat_count = 4,
              shift = util.by_pixel(14, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-ending-right.png",
            priority = "extra-high",
            width = 32,
            height = 48,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -4)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 36,
            repeat_count = 2,
            shift = util.by_pixel(14, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-ending-right-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 68,
              repeat_count = 2,
              shift = util.by_pixel(17, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__necromant__/graphics/entity/walls/stone-worm-wall-ending-left.png",
            priority = "extra-high",
            width = 32,
            height = 48,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -4)
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 54,
            height = 36,
            repeat_count = 2,
            shift = util.by_pixel(8, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-ending-left-shadow.png",
              priority = "extra-high",
              width = 102,
              height = 68,
              repeat_count = 2,
              shift = util.by_pixel(9, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },

      filling =
      {
        filename = "__base__/graphics/entity/wall/wall-filling.png",
          priority = "extra-high",
          width = 24,
          height = 30,
          variation_count = 8,
          line_length = 8,
          shift = util.by_pixel(0, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/wall/hr-wall-filling.png",
            priority = "extra-high",
            width = 48,
            height = 56,
            variation_count = 8,
            line_length = 8,
            shift = util.by_pixel(0, -1),
            scale = 0.5
          }
      },
      water_connection_patch =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/wall/wall-patch.png",
            priority = "extra-high",
            width = 58,
            height = 64,
            shift = util.by_pixel(0, -2),
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-patch.png",
              priority = "extra-high",
              width = 116,
              height = 128,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
            priority = "extra-high",
            width = 74,
            height = 52,
            shift = util.by_pixel(8, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-patch-shadow.png",
              priority = "extra-high",
              width = 144,
              height = 100,
              shift = util.by_pixel(9, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      gate_connection_patch =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/wall/wall-gate.png",
            priority = "extra-high",
            width = 42,
            height = 56,
            shift = util.by_pixel(0, -8),
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-gate.png",
              priority = "extra-high",
              width = 82,
              height = 108,
              shift = util.by_pixel(0, -7),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
            priority = "extra-high",
            width = 66,
            height = 40,
            shift = util.by_pixel(14, 18),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-gate-shadow.png",
              priority = "extra-high",
              width = 130,
              height = 78,
              shift = util.by_pixel(14, 18),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
    wall_diode_green = util.conditional_return(not data.is_demo,
    {
      sheet =
      {
        filename = "__base__/graphics/entity/wall/wall-diode-green.png",
        priority = "extra-high",
        width = 38,
        height = 24,
        --frames = 4, -- this is optional, it will default to 4 for Sprite4Way
        shift = util.by_pixel(-2, -24),
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-diode-green.png",
          priority = "extra-high",
          width = 72,
          height = 44,
          --frames = 4,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }),
    wall_diode_green_light_top = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_right = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_bottom = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_left = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3
    }),

    wall_diode_red = util.conditional_return(not data.is_demo,
    {
      sheet =
      {
        filename = "__base__/graphics/entity/wall/wall-diode-red.png",
        priority = "extra-high",
        width = 38,
        height = 24,
        --frames = 4, -- this is optional, it will default to 4 for Sprite4Way
        shift = util.by_pixel(-2, -24),
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-diode-red.png",
          priority = "extra-high",
          width = 72,
          height = 44,
          --frames = 4,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }),
    wall_diode_red_light_top = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_right = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_bottom = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_left = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3
    }),

    circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
    circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
    }
  },

  
  {
    type = "gate",
    name = "necro-worm-gate",
    icon = "__necromant__/graphics/icons/stone-worm-gate.png",
	icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "necro-item-worm-gate"},
    max_health = 900,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20
      },
      {
        type = "impact",
        decrease = 45,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 70
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__necromant__/graphics/entity/gates/gate-vertical.png",
          line_length = 8,
          width = 38,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14)
        },
        {
          filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 40,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(10, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-vertical-shadow.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__necromant__/graphics/entity/gates/gate-horizontal.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, -4)
        },
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-horizontal-shadow.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-left.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-left.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-right.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-right.png",
            line_length = 8,
            width = 122,
            height = 58,
            frame_count = 16,
            shift = util.by_pixel(12, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-left.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-left.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-right.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-right.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 68,
      height = 66,
      frame_count = 16,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = "__base__/graphics/entity/gate/hr-gate-rail-base-vertical.png",
        line_length = 8,
        width = 138,
        height = 130,
        frame_count = 16,
        shift = util.by_pixel(-1, 0),
        scale = 0.5
      }
    },
    horizontal_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 66,
      height = 54,
      frame_count = 16,
      shift = util.by_pixel(0, 2),
      hr_version =
      {
        filename = "__base__/graphics/entity/gate/hr-gate-rail-base-horizontal.png",
        line_length = 8,
        width = 130,
        height = 104,
        frame_count = 16,
        shift = util.by_pixel(0, 3),
        scale = 0.5
      }
    },
    wall_patch =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-wall-patch.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-wall-patch.png",
            line_length = 8,
            width = 70,
            height = 94,
            frame_count = 16,
            shift = util.by_pixel(-1, 13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-wall-patch-shadow.png",
          line_length = 8,
          width = 44,
          height = 38,
          frame_count = 16,
          shift = util.by_pixel(8, 32),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-wall-patch-shadow.png",
            line_length = 8,
            width = 82,
            height = 72,
            frame_count = 16,
            shift = util.by_pixel(9, 33),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  }

})
