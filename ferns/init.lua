-----------------------------------------------------------------------------------------------
local title		= "Ferns" -- former "Archae Plantae"
local version	= "0.2.1"
local mname		= "ferns" -- former "archaeplantae"
-----------------------------------------------------------------------------------------------
-- (by Mossmanikin)
-----------------------------------------------------------------------------------------------

abstract_ferns = {}

-- support for i18n
local S = minetest.get_translator("ferns")
local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/settings.lua")

if abstract_ferns.config.enable_lady_fern == true then
	dofile(modpath.."/fern.lua")
end

if abstract_ferns.config.enable_horsetails == true then
	dofile(modpath.."/horsetail.lua")
end

if abstract_ferns.config.enable_treefern == true then
	dofile(modpath.."/treefern.lua")
end

if abstract_ferns.config.enable_giant_treefern == true then
	dofile(modpath.."/gianttreefern.lua")
end

dofile(modpath.."/crafting.lua")


-----------------------------------------------------------------------------
-- TESTS
-----------------------------------------------------------------------------
local run_tests = true	-- set to false to skip

if run_tests then

	-- These are, essentially, unit tests to make sure that all required item
	-- strings are registered. The init sequence is not time critical so leaving
	-- them here won't affect performance.

	-- Check node names
	if abstract_ferns.config.enable_horsetails then
		print("[Mod] " ..title.. " Checking horsetail item strings")
		assert(minetest.registered_items["hades_ferns:horsetail_01"] ~= nil)
		assert(minetest.registered_items["hades_ferns:horsetail_02"] ~= nil)
		assert(minetest.registered_items["hades_ferns:horsetail_03"] ~= nil)
		assert(minetest.registered_items["hades_ferns:horsetail_04"] ~= nil)
	end
	if abstract_ferns.config.enable_lady_fern then
		print("[Mod] ".. title .." Checking lady fern item strings")
		assert(minetest.registered_items["hades_ferns:fern_01"] ~= nil)
		assert(minetest.registered_items["hades_ferns:fern_02"] ~= nil)
		assert(minetest.registered_items["hades_ferns:fern_03"] ~= nil)
	end
	if abstract_ferns.config.enable_treefern then
		print("[Mod] ".. title .." Checking tree fern item strings")
		assert(minetest.registered_items["hades_ferns:tree_fern_leaves"] ~= nil)
		assert(minetest.registered_items["hades_ferns:tree_fern_leaves_02"] ~= nil)
		assert(minetest.registered_items["hades_ferns:fern_trunk"] ~= nil)
		assert(minetest.registered_items["hades_ferns:sapling_tree_fern"] ~= nil)
	end
end

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
