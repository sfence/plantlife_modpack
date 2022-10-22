-----------------------------------------------------------------------------------------------
local title		= "Trunks"
local version	= "0.1.4"
local mname		= "trunks"
-----------------------------------------------------------------------------------------------
-- Code by Mossmanikin & Neuromancer

abstract_trunks = {}

-- support for i18n
local S = minetest.get_translator("trunks")
local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/trunks_settings.txt")
dofile(modpath.."/generating.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/crafting.lua")

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
