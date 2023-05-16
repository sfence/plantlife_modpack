
local param_zero = 0
local param_create = 16
local param_treshold = 32

minetest.register_abm({
	label = "Create leafy litter",
	nodenames = {"hades_core:dirt", "hades_extrabiomes:wet_dirt"}
,
	neighbors = {"hades_falling_leaves:leaf_pile"},
	interval = 67,
	chance = 43,
	action = function(pos, node)
		local from_pos = vector.add(pos, vector.new(1,1,1))
		local to_pos = vector.add(pos, vector.new(-1,1,-1))
		local pile_pos = minetest.find_nodes_in_area(from_pos, to_pos, {"hades_falling_leaves:leaf_pile"})
		if (#pile_pos>2) then
			if (node.param1<param_zero) or (node.param1>=param_treshold) then
				node.param1 = param_zero
			end
			node.param1 = node.param1 + #pile_pos - 2
			if (node.param1>=param_treshold) then
				minetest.set_node(pos, {name="hades_woodsoils:dirt_with_leaves_1", param1=param_create})
			else
				minetest.swap_node(pos, node)
			end
		end
	end,
})

minetest.register_abm({
	label = "Create woodsoil",
	nodenames = {"hades_core:grass"}
,
	neighbors = {"hades_falling_leaves:leaf_pile"},
	interval = 67,
	chance = 43,
	action = function(pos, node)
		local from_pos = vector.add(pos, vector.new(1,1,1))
		local to_pos = vector.add(pos, vector.new(-1,1,-1))
		local pile_pos = minetest.find_nodes_in_area(from_pos, to_pos, {"hades_falling_leaves:leaf_pile"})
		if (#pile_pos>2) then
			if (node.param1<param_zero) or (node.param1>=param_treshold) then
				node.param1 = param_create
			end
			node.param1 = node.param1 + #pile_pos - 2
			if (node.param1>=param_treshold) then
				minetest.set_node(pos, {name="hades_woodsoils:grass_with_leaves_1", param1=param_create})
			else
				minetest.swap_node(pos, node)
			end
		end
	end,
})

minetest.register_abm({
	label = "Update woodsoil - next",
	nodenames = {"group:woodsoil_next"}
,
	neighbors = {"hades_falling_leaves:leaf_pile"},
	interval = 67,
	chance = 43,
	action = function(pos, node)
		local from_pos = vector.add(pos, vector.new(1,1,1))
		local to_pos = vector.add(pos, vector.new(-1,1,-1))
		local pile_pos = minetest.find_nodes_in_area(from_pos, to_pos, {"hades_falling_leaves:leaf_pile"})
		if (#pile_pos>2) then
			if (node.param1<param_zero) or (node.param1>=param_treshold) then
				node.param1 = param_create
			end
			node.param1 = node.param1 + #pile_pos - 2
			if (node.param1>=param_treshold) then
        local def = minetest.registered_nodes[node.name]
				minetest.set_node(pos, {name=def._woodsoil_next, param1=param_create})
			else
				minetest.swap_node(pos, node)
			end
		end
	end,
})

minetest.register_abm({
	label = "Update woodsoil - prev",
	nodenames = {"group:woodsoil"}
,
	interval = 67,
	chance = 43,
	action = function(pos, node)
		local from_pos = vector.add(pos, vector.new(1,1,1))
		local to_pos = vector.add(pos, vector.new(-1,1,-1))
		local pile_pos = minetest.find_nodes_in_area(from_pos, to_pos, {"hades_falling_leaves:leaf_pile"})
		if (#pile_pos<2) then
			if (node.param1<param_zero) or (node.param1>=param_treshold) then
				node.param1 = param_create
			end
			node.param1 = node.param1 - (2 - #pile_pos + math.ceil(minetest.get_node_light(pos, 0.5)/4))
			if (node.param1<param_zero) then
        local def = minetest.registered_nodes[node.name]
        local node_prev = {
            name = def._woodsoil_prev,
            param1 = param_create,
          }
        if (not node_prev.name) then
          node_prev.name = "hades_core:dirt"
          if minetest.find_node_near(pos, 1, {"hades_extrabiomes:wet_dirt"}) then
            node_prev.name = "hades_extrabiomes:wet_dirt"
          end
        end
				minetest.set_node(pos, node_prev)
			else
				minetest.swap_node(pos, node)
			end
    elseif (#pile_pos>2) then
			if (node.param1<param_zero) or (node.param1>=param_treshold) then
				node.param1 = param_create
			end
			node.param1 = node.param1 + (#pile_pos - 2)
      if node.param1>=param_treshold then
        node.param1 = param_treshold-1
      end
			minetest.swap_node(pos, node)
		end
	end,
})

