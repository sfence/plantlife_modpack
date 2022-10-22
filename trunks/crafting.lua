-- Code by Mossmanikin
-----------------------------------------------------------------------------------------------
-- TWiGS
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- *leaves --> twigs
	output = "hades_trunks:twig_1 2",
	recipe = {{"group:leafdecay"}}
})
if minetest.get_modpath("hades_moretrees") ~= nil then
minetest.register_craft({ -- moretrees_leaves --> twigs
	output = "hades_trunks:twig_1 2",
	recipe = {{"group:moretrees_leaves"}}
})
minetest.register_craft({ -- except moretrees:palm_leaves
	output = "hades_moretrees:palm_leaves",
	recipe = {{"hades_moretrees:palm_leaves"}}
})
end
if minetest.get_modpath("bushes") ~= nil then
minetest.register_craft({ -- BushLeaves --> twigs
	output = "hades_trunks:twig_1 2",
	recipe = {{"hades_extrabushes:BushLeaves1"}}
})
minetest.register_craft({
	output = "hades_trunks:twig_1 2",
	recipe = {{"hades_extrabushes:BushLeaves2"}}
})
minetest.register_craft({ -- bushbranches --> twigs
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_extrabushes:bushbranches1"}}
})
minetest.register_craft({
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_extrabushes:bushbranches2"}}
})
minetest.register_craft({
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_extrabushes:bushbranches3"}}
})
minetest.register_craft({
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_extrabushes:bushbranches4"}}
})
end
minetest.register_craft({ -- twigs block --> twigs
	output = "hades_trunks:twig_1 8",
	recipe = {{"hades_trunks:twigs"}}
})
minetest.register_craft({ -- twigs_slab --> twigs
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_trunks:twigs_slab"}}
})
minetest.register_craft({ -- twigs_roof --> twigs
	output = "hades_trunks:twig_1 4",
	recipe = {{"hades_trunks:twigs_roof"}}
})
minetest.register_craft({ -- twigs_roof_corner --> twigs
	output = "hades_trunks:twig_1 3",
	recipe = {{"hades_trunks:twigs_roof_corner"}}
})
minetest.register_craft({ -- twigs_roof_corner_2 --> twigs
	output = "hades_trunks:twig_1 3",
	recipe = {{"hades_trunks:twigs_roof_corner_2"}}
})
-----------------------------------------------------------------------------------------------
-- STiCK
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twig --> stick
	output = "hades_core:stick",
	recipe = {{"hades_trunks:twig_1"}}
})

-----------------------------------------------------------------------------------------------
-- TWiGS BLoCK
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twigs --> twigs block
	output = "hades_trunks:twigs",
	recipe = {
		{"hades_trunks:twig_1","hades_trunks:twig_1","hades_trunks:twig_1"},
		{"hades_trunks:twig_1",      ""       ,"hades_trunks:twig_1"},
		{"hades_trunks:twig_1","hades_trunks:twig_1","hades_trunks:twig_1"},
	}
})

-----------------------------------------------------------------------------------------------
-- TWiGS SLaBS
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twigs blocks --> twigs_slabs
	output = "hades_trunks:twigs_slab 6",
	recipe = {
		{"hades_trunks:twigs","hades_trunks:twigs","hades_trunks:twigs"},
	}
})

-----------------------------------------------------------------------------------------------
-- TWiGS RooFS
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twigs blocks --> twigs_roofs
	output = "hades_trunks:twigs_roof 4",
	recipe = {
		{"hades_trunks:twigs",""},
		{"","hades_trunks:twigs"},
	}
})
minetest.register_craft({
	output = "hades_trunks:twigs_roof 4",
	recipe = {
		{"","hades_trunks:twigs"},
		{"hades_trunks:twigs",""},
	}
})

-----------------------------------------------------------------------------------------------
-- TWiGS RooF CoRNeRS
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twigs blocks --> twigs_roof_corners
	output = "hades_trunks:twigs_roof_corner 8",
	recipe = {
		{      ""      ,"hades_trunks:twigs",      ""      },
		{"hades_trunks:twigs",      ""      ,"hades_trunks:twigs"},
	}
})

-----------------------------------------------------------------------------------------------
-- TWiGS RooF CoRNeRS 2
-----------------------------------------------------------------------------------------------
minetest.register_craft({ -- twigs blocks --> twigs_roof_corner_2's
	output = "hades_trunks:twigs_roof_corner_2 8",
	recipe = {
		{"hades_trunks:twigs",      ""      ,"hades_trunks:twigs"},
		{      ""      ,"hades_trunks:twigs",      ""      },
	}
})
