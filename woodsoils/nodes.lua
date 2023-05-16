-- support for i18n
local S = minetest.get_translator("woodsoils")

-- nodes

minetest.register_node("hades_woodsoils:dirt_with_leaves_1", {
	description = S("Forest Soil 1"),
	tiles = {
		"default_dirt.png^woodsoils_ground_cover.png",
		"default_dirt.png",
		"default_dirt.png^woodsoils_ground_cover_side.png"},
	is_ground_content = true,
	groups = {
		crumbly=3,
		soil=1,
		dirt=1,
		--not_in_creative_inventory=1
		woodsoil_next=1,
		woodsoil=1,
		bellow_fertilizer=2,
	},
	drop = 'hades_core:dirt',
	sounds = hades_sounds.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
	soil = {
		base = "hades_woodsoils:dirt_with_leaves_1",
		dry = "hades_farming:soil",
		wet = "hades_farming:soil_wet"
	},
	_woodsoil_prev = "hades_core:dirt",
	_woodsoil_next = "hades_woodsoils:dirt_with_leaves_2",
})

minetest.register_node("hades_woodsoils:dirt_with_leaves_2", {
	description = S("Forest Soil 2"),
	tiles = {
		"woodsoils_ground.png",
		"default_dirt.png",
		"default_dirt.png^woodsoils_ground_side.png"},
	is_ground_content = true,
	groups = {
		crumbly=3,
		soil=1,
		dirt=1,
		--not_in_creative_inventory=1
		woodsoil=1,
		bellow_fertilizer=2,
	},
	drop = 'hades_core:dirt',
	sounds = hades_sounds.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
	soil = {
		base = "hades_woodsoils:dirt_with_leaves_2",
		dry = "hades_farming:soil",
		wet = "hades_farming:soil_wet"
	},
	_woodsoil_prev = "hades_woodsoils:dirt_with_leaves_1",
})

minetest.register_node("hades_woodsoils:grass_with_leaves_1", {
	description = S("Forest Soil with Grass 1"),
	paramtype2 = "color",
	tiles = {
		"hades_core_grass_cover_colorable.png",
		{name="default_dirt.png", color="white"},
		--"default_dirt.png^default_grass_side.png^woodsoils_ground_cover_side.png"},
	},
	overlay_tiles = {
		"hades_core_grass_cover_colorable.png^woodsoils_ground_cover2.png",
		"",
		{name="hades_core_grass_side_cover_colorable.png^woodsoils_ground_cover_side2.png", tileable_vertical=false},
	},
	palette_index = 0,
	color = "#acef6a",
	palette = "hades_core_palette_grass.png",
	is_ground_content = true,
	groups = {
		crumbly=3,
		soil=1,
		dirt=1,
		--not_in_creative_inventory=1
		dirt_with_grass = 1,
		woodsoil_next=1,
		woodsoil=1,
		bellow_fertilizer=2,
	},
	drop = 'hades_core:dirt',
	sounds = hades_sounds.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
	soil = {
		base = "hades_woodsoils:grass_with_leaves_1",
		dry = "hades_farming:soil",
		wet = "hades_farming:soil_wet"
	},
	_woodsoil_prev = "hades_core:dirt_with_grass",
	_woodsoil_next = "hades_woodsoils:grass_with_leaves_2",
})

minetest.register_node("hades_woodsoils:grass_with_leaves_2", {
	description = S("Forest Soil with Grass 2"),
	paramtype2 = "color",
	tiles = {
		"hades_core_grass_cover_colorable.png",
		{name="default_dirt.png", color="white"},
		--"default_dirt.png^default_grass_side.png^woodsoils_ground_cover_side.png"},
	},
	overlay_tiles = {
		"hades_core_grass_cover_colorable.png^woodsoils_ground_cover.png",
		"",
		{name="hades_core_grass_side_cover_colorable.png^woodsoils_ground_cover_side.png", tileable_vertical=false},
	},
	palette_index = 0,
	color = "#acef6a",
	palette = "hades_core_palette_grass.png",
	is_ground_content = true,
	groups = {
		crumbly=3,
		soil=1,
		dirt=1,
		--not_in_creative_inventory=1
		dirt_with_grass = 1,
		woodsoil_next=1,
		woodsoil=1,
		bellow_fertilizer=2,
	},
	drop = 'hades_core:dirt',
	sounds = hades_sounds.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
	soil = {
		base = "hades_woodsoils:grass_with_leaves_2",
		dry = "hades_farming:soil",
		wet = "hades_farming:soil_wet"
	},
	_woodsoil_prev = "hades_woodsoils:grass_with_leaves_1",
	_woodsoil_next = "hades_woodsoils:dirt_with_leaves_2",
})

-- For compatibility with older stuff
minetest.register_alias("forestsoils:dirt_with_leaves_1",	"hades_woodsoils:dirt_with_leaves_1")
minetest.register_alias("forestsoils:dirt_with_leaves_2",	"hades_woodsoils:dirt_with_leaves_2")
minetest.register_alias("forestsoils:grass_with_leaves_1",	"hades_woodsoils:grass_with_leaves_1")
minetest.register_alias("forestsoils:grass_with_leaves_2",	"hades_woodsoils:grass_with_leaves_2")
