data:extend(
{
  {
    type = "explosion",
    name = "fireball-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__necromant__/graphics/entity/fireball-explosion.png",
        priority = "extra-high",
        flags = { "compressed" },
        width = 295.5,
        height = 411,
        frame_count = 6,
        animation_speed = 0.5,
        shift = {0, -0.3125}
      }
    },
    light = {intensity = 1, size = 10, color = {r=1.0, g=1.0, b=1.0}},
    sound =
    {
      aggregation =
      {
        max_count = 1,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    }
  }
}
)