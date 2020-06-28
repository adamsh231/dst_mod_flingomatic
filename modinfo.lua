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
                        {description = "Normal Capacity", data = 1, hover = "The fuel capacity is normal"},
                        {description = "x10", data = 10, hover = "The fuel capacity is x10 than normal"},
                        {description = "x50", data = 50, hover = "The fuel capacity is x50 than normal"},
                        {description = "x100", data = 100, hover = "The fuel capacity is x100 than normal"},
                        {description = "Monster Capacity", data = 1000, hover = "The fuel capacity is x1000 than normal"},
                    },
        default = 1,
    },
    {
        name = "RANGE_MULTIPLIER",
        label = "Adding more range to Flingomatic",
        options =   {
                        {description = "Normal Range", data = 1, hover = "The range is normal"},
                        {description = "x2", data = 2, hover = "The range is x2 than normal"},
                        {description = "x3", data = 3, hover = "The range is x3 than normal"},
                        {description = "x4", data = 4, hover = "The range is x4 than normal"},
                        {description = "Six Sense", data = 5, hover = "The range is x5 than normal"},
                    },
        default = 1,
    },
    {
        name = "WHITE_LIST_CAMPFIRE",
        label = "Extinguish campfire",
        options =   {
                        {description = "Extinguish", data = false, hover = "Nearby campfire will be extinguished"},
                        {description = "Ignore", data = true, hover = "Nearby campfire will be ignored"},
                    },
        default = false,
    },
}