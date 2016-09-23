
data:extend(
{
  {
    type = "item",
    name = "ku-limestone",
    icon = "__kumori-ores__/graphics/limestone/icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "d[stone]",
    stack_size = 50
  }
}
)

-- chance to generate gravel when mining iron ore
data.raw["resource"]["stone"].minable.result = nil
data.raw["resource"]["stone"].minable.results = {
  {type="item", name="stone", amount_min=1, amount_max=1, probability=0.6},
  {type="item", name="ku-limestone", amount_min=1, amount_max=1, probability=0.6}
}