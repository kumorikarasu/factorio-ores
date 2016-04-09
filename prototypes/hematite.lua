data:extend({
  {
    type = "item",
    name = "iron-dust",
    icon = "__kumori-ores__/graphics/dust/iron-dust.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "f",
    stack_size = 100
  }
})


-- chance to generate gravel when mining iron ore
data.raw["resource"]["iron-ore"].minable.result = nil
data.raw["resource"]["iron-ore"].minable.results = {
  {type="item", name="iron-ore", amount=1},
  {type="item", name="iron-dust", amount_min=1, amount_max=1, probability=0.05},
  {type="item", name="gravel", amount_min=1, amount_max=1, probability=0.2},
}