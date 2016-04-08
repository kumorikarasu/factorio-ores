
-- chance to generate gravel when mining copper
data.raw["resource"]["copper-ore"].minable.results = {
    {type="item", name="copper-ore", amount=1},
    {type="item", name="slag", amount_min=1, amount_max=1, probability=0.45}
}