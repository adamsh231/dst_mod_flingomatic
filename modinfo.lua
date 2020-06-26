-- This information tells other players more about the mod
name = "Better Flingomatic"
author = "AdamSH"
version = "1.0"
description = [[Simple mod that makes Flingomatic has more fuel]]
forumthread = "/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10 --DST version

---- Can specify a custom icon for this mod!
icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- This let's the game know that this mod doesn't need to be listed in the server's mod listing
all_clients_require_mod = false
clients_only_mod = false

-- Let the mod system know that this mod is functional with Don't Starve Together
dst_compatible = true
dont_starve_compatible = false

-- These tags allow the server running this mod to be found with filters from the server listing screen
server_filter_tags = {"utility", "infinite"}

configuration_options =
{
    {
        name = "FUEL_CAPACITY",
        label = "Adding more fuel to Flingomatic",
        options =   {
                        {description = "Normal Capacity", data = 1},
                        {description = "x10", data = 10},
                        {description = "x50", data = 50},
                        {description = "x100", data = 100},
                        {description = "Monster Capacity", data = 1000},
                    },
        default = 1,
    },
    {
        name = "WHITE_LIST_CAMPFIRE",
        label = "Extinguish campfire?",
        options =   {
                        {description = "Yes", data = false},
                        {description = "No", data = true},
                    },
        default = false,
    },
}