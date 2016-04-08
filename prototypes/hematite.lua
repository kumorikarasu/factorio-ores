
-- chance to generate gravel when mining iron ore
data.raw["resource"]["iron-ore"].minable.results = {
    {type="item", name="iron-ore", amount=1},
    {type="item", name="slag", amount_min=1, amount_max=1, probability=0.45}
}