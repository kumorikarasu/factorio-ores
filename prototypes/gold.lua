
data:extend(
{
  {
    type = "item",
    name = "ku-gold-dust",
    icon = "__kumori-ores__/graphics/dust/gold-dust.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "f",
    stack_size = 100
  },
  {
    type = "item",
    name = "ku-gold-ore",
    icon = "__kumori-ores__/graphics/gold/ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "d[stone]",
    stack_size = 50
  },
  {
    type = "noise-layer",
    name = "ku-gold"
  },
  {
    type = "autoplace-control",
    name = "ku-gold",
    richness = true,
    order = "b-c"
  },
  {
    type = "resource",
    name = "ku-gold",
    icon = "__kumori-ores__/graphics/gold/ore.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      results = {
          {type="item", name="ku-gold-ore", amount_min=1, amount_max=1, probability=0.4},
          {type="item", name="ku-gravel", amount_min=1, amount_max=1, probability=0.6}
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "ku-gold",
      sharpness = 1,
      richness_multiplier = 11000,
      richness_base = 150,
      size_control_multiplier = -1,
      peaks = {
        {
          influence = 0.20,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.6,
          noise_layer = "ku-gold",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.25,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.45,
          noise_layer = "ku-gold",
          noise_octaves_difference = -4,
          noise_persistence = 0.45,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "ku-sandstone",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        }
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__kumori-ores__/graphics/gold/ore.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=1, g=0.915, b=0.510}
  }
}
)