if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Watson County Arrow XT"
VEHICLE.Vehicle = "arrowxt_sgm"
VEHICLE.Category = "Photon 2: Watson County"
VEHICLE.Author = "mighters"
VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.BodyGroups = {
	["lightbar"] = 1,
	["lightbar_side"] = 1,
	["m9"] = 0,
	["genericlights"] = 1,
}


VEHICLE.SubMaterials = {
	[11] = "models/supermighty/watson_county/arrow_xt",
    [15] = "models/tdmcars/shared/invisible",
   -- [6] = "models/supermighty/watson_county/misc/ladder_lights",
}


-- Component Example:
--	{
--		Component = "component_name",
--		Position = Vector( 10, 20, 30 ),
--		Angles = Angle( 0, 45, 90 ),
--		Scale = 0.9,
--		States = { "R", "B" },
--		Phase = 180,
--		Segments = {
--			MyCustomSegment = {
--					Frames = {
--						[1] = "1 3 5",
--						[2] = "2 4 6"
--					},
--					Sequences = {
--						["MY_SEQUENCE"] = { 1, 2 }
--					}
--				}
--		},
--		Inputs = {
--			["Emergency.Warning"] = {
--				["MODE1"] = {
--					MyCustomSegment = "MY_SEQUENCE"
--				}
--			}
--		}
--	}
VEHICLE.Components = {	
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( -40.3, -181.2,40.65 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( 40.3, -181.2, 40.65 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_left",
		Position = Vector( -40.3, -181.2, 35.85 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_right",
		Position = Vector( 40.3, -181.2, 35.85 ),
		Angles = Angle( 180, 180, 0 ),
		Scale = 0.90,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( -40.3, -181.2, 31.05 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( 40.3, -181.2, 31.05 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -40.3, -181.2, 45.55 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 40.3, -181.2, 45.55 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( 40, -179.5, 102.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( -40, -179.5, 102.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( -47.4, -169, 102.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( 47.4, -169, 102.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( 47.4, -30, 102.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( -47.4, -30, 102.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -47.4, -105, 53 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 47.4, -105, 53 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -47.4, 87, 102 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 47.4, 87, 102 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -47.3, 170, 25 ),
		Angles = Angle( 0, 89, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 47.3, 170, 25 ),
		Angles = Angle( 0, -89, 0 ),
		Scale = 0.90,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -29, 169.5, 57.45 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.85,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -36.2, 169.5, 57.45 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.85,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 29, 169.5, 57.45 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.85,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 36.2, 169.5, 57.45 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.85,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "photon_whelen_freedom_70_mighty",
		Position = Vector(0, 143, 106.2),
		Angles = Angle( 0, 90, 0),
		Scale = 1,
    },
}

VEHICLE.Props = {
    {
        Model = "models/creeper/photon/whelen_600_cast4.mdl",
        Position = Vector( -40.3, -181.2, 45.5 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
    },
    {
        Model = "models/creeper/photon/whelen_600_cast4.mdl",
        Position = Vector( 40.3, -181.2, 45.5 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.90,
    },
    {
        Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
        Position = Vector( -29.2, -181, 28.9 ),
        Angles = Angle( 0, -90, 0 ),
        Scale = 0.9,
        SubMaterials = {
            [1] = "models/supermighty/watson_county/fbk_plate",
        }
    },
    {
		Model = "models/supermighty/firetruck_grille.mdl",
		Scale = 1,
		Position = Vector(0, 0, 0),
		Angles = Angle( 0, 0, 0),
	},
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}
