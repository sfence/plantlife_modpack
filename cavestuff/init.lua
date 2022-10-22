-----------------------------------------------------------------------------------------------
local title		= "Cave Stuff"
local version	= "0.0.3"
local mname		= "cavestuff"
-----------------------------------------------------------------------------------------------

-- support for i18n
local S = minetest.get_translator("cavestuff")
local modpath = minetest.get_modpath(minetest.get_current_modname())

cavestuff = {}

dofile(modpath.."/nodes.lua")
dofile(modpath.."/mapgen.lua")

-----------------------------------------------------------------------------------------------

print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
