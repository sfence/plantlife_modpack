-- support for i18n
local S = minetest.get_translator("ferns")
-----------------------------------------------------------------------------------------------
-- Ferns - Crafting 0.0.5
-----------------------------------------------------------------------------------------------
-- (by Mossmanikin)
-----------------------------------------------------------------------------------------------

local fern1 = minetest.registered_items["default:fern_1"] or false
fern1 = (fern1 and fern1.name) or "hades_ferns:fern_01"


minetest.register_craft({
	type = "shapeless",
	output = "hades_ferns:fiddlehead 3",
	recipe = {"hades_ferns:fern_01"},
	replacements = {
		{fern1, "hades_ferns:ferntuber"}
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_ferns:fiddlehead 3",
	recipe = {"hades_ferns:tree_fern_leaves"},
	replacements = {
		{"hades_ferns:tree_fern_leaves", "hades_ferns:sapling_tree_fern"}
	},
})
-----------------------------------------------------------------------------------------------
-- FIDDLEHEAD
-----------------------------------------------------------------------------------------------
minetest.register_alias("archaeplantae:fiddlehead",      "hades_ferns:fiddlehead")

minetest.register_craftitem("hades_ferns:fiddlehead", {
	description = S("Fiddlehead"),
	inventory_image = "ferns_fiddlehead.png",
	on_use = minetest.item_eat(-1), -- slightly poisonous when raw
})
minetest.register_craft({
	type = "cooking",
	output = "hades_ferns:fiddlehead_roasted",
	recipe = "hades_ferns:fiddlehead",
	cooktime = 1,
})
minetest.register_craftitem("hades_ferns:fiddlehead_roasted", {
	description = S("Roasted Fiddlehead"),
	inventory_image = "ferns_fiddlehead_roasted.png",
	on_use = minetest.item_eat(1), -- edible when cooked
})
-----------------------------------------------------------------------------------------------
-- FERN TUBER
-----------------------------------------------------------------------------------------------
minetest.register_alias("archaeplantae:ferntuber",      "hades_ferns:ferntuber")

minetest.register_craftitem("hades_ferns:ferntuber", {
	description = S("Fern Tuber"),
	inventory_image = "ferns_ferntuber.png",
})
minetest.register_craft({
	type = "cooking",
	output = "hades_ferns:ferntuber_roasted",
	recipe = "hades_ferns:ferntuber",
	cooktime = 3,
})

minetest.register_alias("archaeplantae:ferntuber_roasted",      "hades_ferns:ferntuber_roasted")

minetest.register_craftitem("hades_ferns:ferntuber_roasted", {
	description = S("Roasted Fern Tuber"),
	inventory_image = "ferns_ferntuber_roasted.png",
	on_use = minetest.item_eat(3),
})
-----------------------------------------------------------------------------------------------
-- HORSETAIL  (EQUISETUM) --> GREEN DYE https://en.wikipedia.org/wiki/Equisetum
-----------------------------------------------------------------------------------------------
minetest.register_craft({
	type = "shapeless",
	output = "dye:green",
	recipe = {"group:horsetail"},
})
-----------------------------------------------------------------------------------------------
-- GLUE WOODEN TOOLS with RESIN & POLISH them with HORSETAIL (planned)
-----------------------------------------------------------------------------------------------
--[[minetest.register_craft({
	type = "shapeless",
	output = "default:pick_wood",
	recipe = {"default:pick_wood","group:horsetail","farming:string","default:stick"},
})
minetest.register_craft({
	type = "shapeless",
	output = "default:shovel_wood",
	recipe = {"default:shovel_wood","group:horsetail","farming:string","default:stick"},
})
minetest.register_craft({
	type = "shapeless",
	output = "default:axe_wood",
	recipe = {"default:axe_wood","group:horsetail","farming:string","default:stick"},
})
minetest.register_craft({
	type = "shapeless",
	output = "default:sword_wood",
	recipe = {"default:sword_wood","group:horsetail","farming:string","default:stick"},
})
minetest.register_craft({
	type = "shapeless",
	output = "farming:hoe_wood",
	recipe = {"farming:hoe_wood","group:horsetail","farming:string","default:stick"},
})]]
