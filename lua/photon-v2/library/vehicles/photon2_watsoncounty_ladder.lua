if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Watson County Ladder"
VEHICLE.Vehicle = "seagrave_ladder_sgm"
VEHICLE.Category = "Photon 2: Watson County"
VEHICLE.Author = "mighters"
VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.BodyGroups = {
	["outriggers"] = 0,
}

VEHICLE.SubMaterials = {
	[11] = "models/supermighty/watson_county/ladder_truck",
    [6] = "models/supermighty/watson_county/misc/ladder_lights",
}

VEHICLE.Components = {	
    {
		Component = "default_seagrave_ladder_mighty",
		Position = Vector( 0, 0, 0 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 1,
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( -26, -223.5, 36.45 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.84,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_left",
		Position = Vector( -34.2, 216.5, 61.5 ),
		Angles = Angle( 180, 0, 0 ),
		Scale = 0.84,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_right",
		Position = Vector( 34.2, 216.5, 61.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.84,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_left",
		Position = Vector( -26, -223.5, 41 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.84,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( -26, -223.5, 32 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.84,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( 26, -223.5, 36.45 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.84,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_right",
		Position = Vector( 26, -223.5, 41 ),
		Angles = Angle( 180, 180, 0 ),
		Scale = 0.84,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( 26, -223.5, 32 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.84,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( 27.2, 217, 61.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.83,
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
		Position = Vector( -27.2, 217, 61.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.83,
        Phase = "_F_SA75:-75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 0,
        },
	},
    {
		Component = "photon_whelen_freedom_mini_mighty",
		Position = Vector( -31.5, 200, 107.2 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.7,
	},
    {
		Component = "photon_whelen_freedom_mini_mighty",
		Position = Vector( 31.5, 200, 107.2 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.7,
	},
    -- side lighting --
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -46.75, 133, 105 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.83,
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
		Position = Vector( -46.75, 77.5, 63 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.83,
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
		Position = Vector( -47.45, -91.85, 48 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.83,
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
		Position = Vector( -47.45, -173.5, 56 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.83,
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
		Position = Vector( -46.1, 215.5, 30.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 46.75, 133, 105 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 46.75, 77.5, 63 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 47.45, -91.85, 48 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 47.45, -173.5, 56 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 46.1, 215.5, 30.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.83,
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
		Position = Vector( 26, -222, 82.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.83,
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
		Position = Vector( -26, -222, 82.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.83,
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
		Position = Vector( 26, -222, 46.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.83,
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
		Position = Vector( -26, -222, 46.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.83,
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
		Component = "photon_mighty_dominator8",
		Position = Vector( 0, -223, 82.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 1,
        StateMap = "[A] 1 2 3 4 5 6 7 8",
	},
}

VEHICLE.Props = {
    {
        Model = "models/creeper/photon/whelen_600_cast3.mdl",
        Position = Vector( -26, -223.4, 41 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.85,
    },
    {
        Model = "models/creeper/photon/whelen_600_cast3.mdl",
        Position = Vector( 26, -223.4, 41 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.85,
    },
    {
        Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
        Position = Vector( 0, -225, 35 ),
        Angles = Angle( 0, -90, 0 ),
        Scale = 1,
        SubMaterials = {
            [1] = "models/supermighty/watson_county/fbk_plate",
        }
    }
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}
