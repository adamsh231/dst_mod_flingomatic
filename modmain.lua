local require = GLOBAL.require
local print = GLOBAL.print

-- Instantiate 
local TUNING = GLOBAL.TUNING
local FIRESUPPRESSOR = require "prefabs/firesuppressor"
local PLACER_SCALE = FIRESUPPRESSOR.PLACER_SCALE

print("------------------ MOD HERE -----------------")

-- FUEL MULTIPLIER
local BASE_FUEL = TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME
local FUEL_MULTIPLIER = GetModConfigData("FUEL_CAPACITY")
TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME = BASE_FUEL*FUEL_MULTIPLIER

-- RANGE MULTIPLIER
local BASE_RANGE = TUNING.FIRE_DETECTOR_RANGE
local RANGE_MULTIPLIER = GetModConfigData("RANGE_MULTIPLIER")
TUNING.FIRE_DETECTOR_RANGE = BASE_RANGE*RANGE_MULTIPLIER

-- IGNORE CAMPFIRE MODIFIER
if (GetModConfigData("WHITE_LIST_CAMPFIRE")) then
	local CAMPFIRES = {
		"campfire",
		"firepit",
		"coldfire",
		"coldfirepit",
		"nightlight",
		"pigtorch",
	}
	
	for k, v in pairs(CAMPFIRES) do
		AddPrefabPostInit(v, function(inst)
			inst:AddTag("burnt")
		end)
	end
end
