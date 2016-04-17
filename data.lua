
    require("prototypes.hematite") -- Iron Ore
    require("prototypes.chalcopyrite") -- Copper
--    require("prototypes.bauxite") -- Aluminum Ore
    require("prototypes.gold") -- gold doesn't really have an ore
--    require("prototypes.casseterite") -- Lead Ore
--    require("prototypes.garnierite") -- Nickel Ore
--    require("prototypes.rutile") -- Titanium Dioxide
--    require("prototypes.argentite") -- Silver
--    require("prototypes.sphalerite") -- Zinc

-- None Ore Type Resources
    require("prototypes.sandstone") -- 
    require("prototypes.clay") -- 


-- Allow mining equipment to mine up to 4 items at once
for name,table in pairs(data.raw["mining-drill"]) do
  table.storage_slots = math.max(4,table.storage_slots or 1)
end
