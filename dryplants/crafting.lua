-----------------------------------------------------------------------------------------------
-- Dry Plants - Recipes 0.1.0 -- Short Grass -> Dirt
-----------------------------------------------------------------------------------------------
-- by Mossmanikin
-- Looked at code from:		darkage, default, farming, sickle, stairs
-- Dependencies:			default, farming
-- Supports:				flint, stoneage, sumpf
-----------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
-- Short Grass
-----------------------------------------------------------------------------------------------
minetest.register_craft({
	output = "default:dirt",
	recipe = {
		{"hades_dryplants:grass_short"},
	}
})

-----------------------------------------------------------------------------------------------
-- Cut Grass
-----------------------------------------------------------------------------------------------
-- grass recipes (remove roots)
minetest.register_craft({
	output = "hades_dryplants:grass",
	recipe = {
		{"default:grass_1"},
	}
})
minetest.register_craft({
	output = "hades_dryplants:grass",
	recipe = {
		{"default:junglegrass"},
	}
})
if minetest.get_modpath("sumpf") ~= nil then
	minetest.register_craft({
		output = "hades_dryplants:grass",
		recipe = {
			{"sumpf:gras"},
		}
	})
end

-----------------------------------------------------------------------------------------------
-- Sickle
-----------------------------------------------------------------------------------------------
minetest.register_craft({
	output = "hades_dryplants:sickle",
	recipe = {
		{"group:stone",""},
		{"", "default:stick"},
		{"default:stick",""}
	}
})
if minetest.get_modpath("flint") ~= nil then
	minetest.register_craft({
		output = "hades_dryplants:sickle",
		recipe = {
			{"flint:flintstone",""},
			{"", "default:stick"},
			{"default:stick",""}
		}
	})
end
if minetest.get_modpath("stoneage") ~= nil then
	minetest.register_craft({
		output = "hades_dryplants:sickle",
		recipe = {
			{"stoneage:silex",""},
			{"", "default:stick"},
			{"default:stick",""}
		}
	})
end

-----------------------------------------------------------------------------------------------
-- Hay
-----------------------------------------------------------------------------------------------
--cooking
minetest.register_craft({
	type = "cooking",
	output = "hades_dryplants:hay",
	recipe = "hades_dryplants:grass",
	cooktime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:hay",
	burntime = 1,
})

-----------------------------------------------------------------------------------------------
-- Wet Reed
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- papyrus -> wetreed
	output = "hades_dryplants:wetreed 2",
	recipe = {
		{"default:papyrus","default:papyrus"},
		{"default:papyrus","default:papyrus"},
	}
})
minetest.register_craft({ -- reedmace_sapling -> wetreed
	output = "hades_dryplants:wetreed 2",
	recipe = {
		{"hades_dryplants:reedmace_sapling","hades_dryplants:reedmace_sapling"},
		{"hades_dryplants:reedmace_sapling","hades_dryplants:reedmace_sapling"},
	}
})
minetest.register_craft({ -- reedmace_top -> wetreed
	output = "hades_dryplants:wetreed 2",
	recipe = {
		{"hades_dryplants:reedmace_top","hades_dryplants:reedmace_top"},
		{"hades_dryplants:reedmace_top","hades_dryplants:reedmace_top"},
	}
})
minetest.register_craft({ -- reedmace -> wetreed
	output = "hades_dryplants:wetreed 2",
	recipe = {
		{"hades_dryplants:reedmace","hades_dryplants:reedmace"},
		{"hades_dryplants:reedmace","hades_dryplants:reedmace"},
	}
})
minetest.register_craft({ -- reedmace_bottom -> wetreed
	output = "hades_dryplants:wetreed 2",
	recipe = {
		{"hades_dryplants:reedmace_bottom","hades_dryplants:reedmace_bottom"},
		{"hades_dryplants:reedmace_bottom","hades_dryplants:reedmace_bottom"},
	}
})


local ReeD = {
	{"wetreed"},
	{"reed"}
}
for i in pairs(ReeD) do
	local reed = "hades_dryplants:"..ReeD[i][1]
	local slab = reed.."_slab"
	local roof = reed.."_roof"
	local corner = roof.."_corner"
	local corner_2 = corner.."_2"
-----------------------------------------------------------------------------------------------
-- Block
-----------------------------------------------------------------------------------------------
	minetest.register_craft({ -- slab -> block
		output = reed,
		recipe = {
			{slab},
			{slab},
		}
	})
	minetest.register_craft({ -- roof -> block
		output = reed,
		recipe = {
			{roof},
			{roof},
		}
	})
	minetest.register_craft({ -- corner -> block
		type = "shapeless",
		output = reed.." 3",
		recipe = {corner,corner,corner,corner,corner,corner,corner,corner}, -- 8x
	})
	minetest.register_craft({ -- corner_2 -> block
		type = "shapeless",
		output = reed.." 3",
		recipe = {corner_2,corner_2,corner_2,corner_2,corner_2,corner_2,corner_2,corner_2}, -- 8x
	})
-----------------------------------------------------------------------------------------------
-- Slab
-----------------------------------------------------------------------------------------------
	minetest.register_craft({ -- block -> slab
		output = slab.." 6",
		recipe = {
			{reed,reed,reed},
		}
	})
	minetest.register_craft({ -- roof -> slab
		output = slab,
		recipe = {
			{roof},
		}
	})
	minetest.register_craft({ -- corner -> slab
		output = slab.." 3",
		recipe = {
			{corner,corner},
			{corner,corner},
		}
	})
	minetest.register_craft({ -- corner_2 -> slab
		output = slab.." 3",
		recipe = {
			{corner_2,corner_2},
			{corner_2,corner_2},
		}
	})
-----------------------------------------------------------------------------------------------
-- Roof
-----------------------------------------------------------------------------------------------
	minetest.register_craft({ -- block -> roof
		output = roof.." 4",
		recipe = {
			{reed,""},
			{"",reed},
		}
	})
	minetest.register_craft({ -- block -> roof
		output = roof.." 4",
		recipe = {
			{"",reed},
			{reed,""},
		}
	})
	minetest.register_craft({ -- slab -> roof
		output = roof,
		recipe = {
			{slab},
		}
	})
-----------------------------------------------------------------------------------------------
-- Roof Corner
-----------------------------------------------------------------------------------------------
	minetest.register_craft({ -- block -> corner
		output = corner.." 8",
		recipe = {
			{"",reed,""},
			{reed,"",reed},
		}
	})
	minetest.register_craft({ -- corner_2 -> corner
		output = corner,
		recipe = {
			{corner_2},
		}
	})
-----------------------------------------------------------------------------------------------
-- Roof Corner 2
-----------------------------------------------------------------------------------------------
	minetest.register_craft({ -- block -> corner_2
		output = corner_2.." 8",
		recipe = {
			{reed,"",reed},
			{"",reed,""},
		}
	})
	minetest.register_craft({ -- corner -> corner_2
		output = corner_2,
		recipe = {
			{corner},
		}
	})
end

-----------------------------------------------------------------------------------------------
-- Reed
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- hay -> reed
	output = "hades_dryplants:reed 2",
	recipe = {
		{"hades_dryplants:hay","hades_dryplants:hay"},
		{"hades_dryplants:hay","hades_dryplants:hay"},
	}
})
--cooking
minetest.register_craft({ -- wetreed -> reed
	type = "cooking",
	output = "hades_dryplants:reed",
	recipe = "hades_dryplants:wetreed",
	cooktime = 2,
})
--fuel
minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:reed",
	burntime = 4,
})
-----------------------------------------------------------------------------------------------
-- Reed Slab
-----------------------------------------------------------------------------------------------
--cooking
minetest.register_craft({ -- wetreed_slab -> reed_slab
	type = "cooking",
	output = "hades_dryplants:reed_slab",
	recipe = "hades_dryplants:wetreed_slab",
	cooktime = 1,
})
--fuel
minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:reed_slab",
	burntime = 2,
})
-----------------------------------------------------------------------------------------------
-- Reed Roof
-----------------------------------------------------------------------------------------------
--cooking
minetest.register_craft({ -- wetreed_roof -> reed_roof
	type = "cooking",
	output = "hades_dryplants:reed_roof",
	recipe = "hades_dryplants:wetreed_roof",
	cooktime = 1,
})
--fuel
minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:reed_roof",
	burntime = 2,
})
-----------------------------------------------------------------------------------------------
-- Reed Roof Corner
-----------------------------------------------------------------------------------------------
--cooking
minetest.register_craft({ -- wetreed_roof_corner -> reed_roof_corner
	type = "cooking",
	output = "hades_dryplants:reed_roof_corner",
	recipe = "hades_dryplants:wetreed_roof_corner",
	cooktime = 1,
})
--fuel
minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:reed_roof_corner",
	burntime = 2,
})
-----------------------------------------------------------------------------------------------
-- Wet Reed Roof Corner 2
-----------------------------------------------------------------------------------------------
--cooking
minetest.register_craft({ -- wetreed_roof_corner -> reed_roof_corner
	type = "cooking",
	output = "hades_dryplants:reed_roof_corner_2",
	recipe = "hades_dryplants:wetreed_roof_corner_2",
	cooktime = 1,
})
--fuel
minetest.register_craft({
	type = "fuel",
	recipe = "hades_dryplants:reed_roof_corner_2",
	burntime = 2,
})
-----------------------------------------------------------------------------------------------
-- Dandelion Leave
-----------------------------------------------------------------------------------------------
--[[minetest.register_craftitem("hades_dryplants:dandelion_leave", {
	description = "Dandelion Leave",
	inventory_image = "dryplants_dandelion_leave.png",
	on_use = minetest.item_eat(1),
})
minetest.register_craft({
	type = "shapeless",
	output = "hades_dryplants:dandelion_leave 4",
	recipe = {"flowers:dandelion_yellow"},
	replacements = {
		{"flowers:dandelion_yellow", "dye:yellow"}
	},
})]]
