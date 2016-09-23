
data:extend(
{
  {
    type = "noise-layer",
    name = "ku-clay"
  },
  {
    type = "autoplace-control",
    name = "ku-clay",
    richness = true,
    order = "b-c"
  },
  {
    type = "resource",
    name = "ku-clay",
    icon = "__kumori-ores__/graphics/icons/clay.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    infinite = true,
    minimum = 750,
    normal = 7500,
    minable =
    {
      hardness = 0.4,
      mining_time = 2,
      results =
      {
        {
          name = "ku-clay",
          amount_min = 1,
          amount_max = 1,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "ku-clay",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 5000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "ku-clay",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__kumori-ores__/graphics/entity/clay.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=0.12, g=0.51, b=0.67},
    map_grid = false
  }
})