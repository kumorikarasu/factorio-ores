function fillKumoriConfig()
	if game.entity_prototypes["ku-sandstone"] then
	config["ku-sandstone"] = {
      type="resource-ore",
     
      allotment=50,
      spawns_per_region={min=1, max=1},
      richness=8000,
      size={min=10, max=20},
      min_amount = 250,
     
      starting={richness=2000, size=15, probability=1},
	
		--multi_resource_chance=0.30,
		--multi_resource={
			--["ku-limestone"] = 3,
		--}

		multi_resource_chance=0.20, -- absolute value
		multi_resource={
			["iron-ore"] = 2, -- ["resource_name"] = allotment
			['copper-ore'] = 4,
			["coal"] = 4,
			["stone"] = 4,
		}

	}

	config["ku-gold"] = {
      type="resource-ore",
     
      allotment=50,
      spawns_per_region={min=1, max=1},
      richness=10000,
      size={min=10, max=20},
      min_amount = 250,
     
      starting={richness=2000, size=15, probability=0},
	
		--multi_resource_chance=0.30,
		--multi_resource={
			--["ku-limestone"] = 3,
		--}
		multi_resource_chance=0.20, -- absolute value
		multi_resource={
			["iron-ore"] = 2, -- ["resource_name"] = allotment
			['copper-ore'] = 4,
			["coal"] = 4,
			["stone"] = 4,
		}

	}
	
	config["ku-clay"] = {
		type="resource-liquid",
		minimum_amount=150e6,
		allotment=40,
		spawns_per_region={min=1, max=1},
		richness={min=125e6, max=175e6}, 
		size={min=1, max=2},
		
		starting={richness=200e6, size=2, probability=1},
	}
	end
end