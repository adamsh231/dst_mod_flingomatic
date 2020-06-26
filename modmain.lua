local require = GLOBAL.require
local TUNING = GLOBAL.TUNING

print("------------------ MOD HERE -----------------")

local BASE_FUEL = TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME
local MULTIPLIER = GetModConfigData("FUEL_CAPACITY")
TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME = BASE_FUEL*MULTIPLIER

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
