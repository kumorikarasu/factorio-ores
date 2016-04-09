
-- chance to generate gravel when mining copper
data.raw["resource"]["copper-ore"].minable.result = nil
data.raw["resource"]["copper-ore"].minable.results = {
    {type="item", name="copper-ore", amount_min=1, amount_max=1, probability=1},
    {type="item", name="gravel", amount_min=1, amount_max=1, probability=0.2}
}