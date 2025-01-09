if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Ford F-550 Ambulance WC"
VEHICLE.Vehicle = "f550_ambu_sgm"
VEHICLE.Category = "Photon 2: Watson County"
VEHICLE.Author = "mighters"

VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

-- Body-Group Example:
-- ["groupName"] = 1
VEHICLE.BodyGroups = {
	["plateholder"] = 1,
	["taillights"] = 2,
}

-- Sub-Material Example:
-- [1] = "path/to/material"
VEHICLE.SubMaterials = {
	[13] = "models/supermighty/watson_county/f550_ambulance",
}

VEHICLE.Components = {
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( -44.3, -169, 23 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1,
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( -33.8, -169, 23 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1,
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_turn_left",
		Position = Vector( -39, -169, 50.6 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( 44.3, -169, 23 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1,
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( 33.8, -169, 23 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1,
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "creeper_whelen_600_turn_right",
		Position = Vector( 39, -169, 50.6 ),
		Angles = Angle( 180, 180, 0 ),
		Scale = 1,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 2,
        },
	},
    {
		Component = "photon_standard_2014f550",
		Position = Vector( 0, 0, 0 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 1,
	},
    {
		Component = "creeper_whelen_700_superled",
		Position = Vector( 14, 155.25, 46.4 ),
		Angles = Angle( 0, -3.5, 0 ),
		Scale = .80,
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
		Component = "creeper_whelen_700_superled",
		Position = Vector( -14, 155.25, 46.4 ),
		Angles = Angle( 0, 3.5, 0 ),
		Scale = .80,
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
		Component = "creeper_whelen_700_superled",
		Position = Vector( 14, 155.25, 37.2 ),
		Angles = Angle( 0, -3.5, 0 ),
		Scale = .80,
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
		Component = "creeper_whelen_700_superled",
		Position = Vector( -14, 155.25, 37.2 ),
		Angles = Angle( 0, 3.5, 0 ),
		Scale = .80,
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
		Component = "photon_libertyii_wc",
		Position = Vector( 0, 40, 88.7 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 1.1,
        States = {
            [1] = "R",
            [2] = "R",
        },
	},
    {
		Component = "creeper_whelen_900_led",
		Position = Vector( 42, 23, 108.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 1.1,
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
		Position = Vector( -42, 23, 108.5 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 1.1,
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
		Position = Vector( -53.5, 10.5, 108.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 1.1,
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
		Position = Vector( -53.5, -156.5, 108.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 1.1,
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
		Position = Vector( 53.5, 10.5, 108.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 1.1,
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
		Position = Vector( 53.5, -156.5, 108.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 1.1,
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
		Position = Vector( 53, -94.1, 42 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 1,
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
		Position = Vector( -53, -94.1, 42 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 1,
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
		Position = Vector( 42, -168.4, 108.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1.1,
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
		Position = Vector( -42, -168.4, 108.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1.1,
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
		Position = Vector( 0, -168.4, 108.5 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1.1,
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
		Position = Vector( -42, -168.4, 60 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1.1,
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
		Position = Vector( 42, -168.4, 60 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 1.1,
        Phase = "_F_SA75:75",
        States = {
            [1] = "R",
            [2] = "R",
        },
        BodyGroups = {
            ["flange"] = 2,
        },
	},
}

VEHICLE.Props = {
    {
        Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
        Position = Vector( -39, -166.4, 41 ),
        Angles = Angle( -10, -90, 0 ),
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