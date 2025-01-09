if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title = "Sutphen Ladder WC"

VEHICLE.Vehicle = "sutphen_ladder_sgm"

VEHICLE.Category = "Photon 2: Watson County"

VEHICLE.Author = "mighters"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Properties = {
	Skin = 0,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.BodyGroups = {
	["riggers"] = 0,
}

VEHICLE.SubMaterials = {
	[0] = "models/supermighty/watson_county/misc/sutphen_lights",
	[11] = "models/supermighty/watson_county/sutphen_ladder",
}

VEHICLE.Components = {
    {
		Component = "photon_whelen_freedom_70_mighty",
		Position = Vector(0, 169, 103.6),
		Angles = Angle( 0, 90, 0),
		Scale = 0.9,
    },
    {
		Component = "creeper_whelen_600_turn_left",
		Position = Vector( -39.4, -286.74, 49 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_turn_right",
		Position = Vector( 39.4, -286.74, 49 ),
		Angles = Angle( 180, 180, 0 ),
		Scale = 0.925,
        Phase = "SLOW",
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( -39.4, -286.74, 44 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_btt",
		Position = Vector( 39.4, -286.74, 44 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( -39.4, -286.74, 39.1 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_rev",
		Position = Vector( 39.4, -286.74, 39.1 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
        BodyGroups = {
            ["flange"] = 3,
        },
	},
    {
		Component = "creeper_whelen_600_superled",
		Position = Vector( -39.4, -286.74, 54 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
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
		Position = Vector( 39.4, -286.74, 54 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
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
		Position = Vector( 42.4, 195.5, 57.9 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.82,
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
		Position = Vector( 33.9, 195.5, 57.9 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.82,
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
		Position = Vector( -42.4, 195.5, 57.9 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.82,
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
		Position = Vector( -33.9, 195.5, 57.9 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.82,
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
		Position = Vector( 46.75, 190.12, 47.5 ),
		Angles = Angle( 0, -90, 0 ),
		Scale = 0.82,
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
		Position = Vector( -46.75, 190.12, 47.5 ),
		Angles = Angle( 0, 90, 0 ),
		Scale = 0.82,
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
        Name = "@signal",
		Component = "creeper_whelen_600_btt",
		Position = Vector( -43.8, 197.55, 47.3 ),
		Angles = Angle( 90, 0, 0 ),
		Scale = 0.77,
        SubMaterials = {
            ["creeper/shared/glass_red"] = "creeper/shared/glass_amber",
        },
        Phase = "_F_SA75:-75",
        StateMap = "[A] 1 2",
        BodyGroups = {
            ["flange"] = 3,
        },
        Segments = {
            Signal = {
                Frames = {
                    [1] = "1 2",
                },
                Sequences = {
                    ["SIGNAL"] = sequence():Add(1):Hold(9):Add(0):Hold(9),
                }
            },
        },
        Inputs = {
            ["Vehicle.Brake"] = {
                ["BRAKE"] = {
                }
            },
            ["Vehicle.Lights"] = {
                ["PARKING"] = {
                },
                ["HEADLIGHTS"] = {
                },
            },
            ["Vehicle.Signal"] = {
                ["LEFT"] = {
                    Signal = "SIGNAL",
                },
                ["HAZARD"] = {
                    Signal = "SIGNAL",
                }
            },
        },
	},
    {
		Inherit = "@signal",
        Position = Vector( 43.8, 197.55, 47.3 ),
        Inputs = {
            ["Vehicle.Signal"] = {
                ["RIGHT"] = {
                    Signal = "SIGNAL",
                },
                ["LEFT"] = {
                }
            },
        },
	},
    {
		Inherit = "@signal",
        Position = Vector( -46.95, 190.12, 58.05 ),
        Angles = Angle( 0, 90, 0),
        Scale = 0.82,
	},
    {
		Inherit = "@signal",
        Position = Vector( 46.95, 190.12, 58.05 ),
        Angles = Angle( 0, -90, 0),
        Scale = 0.82,
        Inputs = {
            ["Vehicle.Signal"] = {
                ["RIGHT"] = {
                    Signal = "SIGNAL",
                },
                ["LEFT"] = {
                }
            },
        },
	},
}

VEHICLE.Props = {
    {
        Model = "models/creeper/photon/whelen_600_cast4.mdl",
        Position = Vector( -39.4, -286.74, 54 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
    },
    {
        Model = "models/creeper/photon/whelen_600_cast4.mdl",
        Position = Vector( 39.4, -286.74, 54 ),
        Angles = Angle( 0, 180, 0 ),
		Scale = 0.925,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( 46.7, 190.12, 58.05 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.82,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( -46.7, 190.12, 58.05 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.82,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( -43.8, 197.33, 47.3 ),
		Angles = Angle( 0, -90, 90 ),
		Scale = 0.77,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( 43.8, 197.33, 47.3 ),
		Angles = Angle( 0, -90, 90 ),
		Scale = 0.77,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( -46.7, 190.12, 58.05 ),
		Angles = Angle( 0, 0, 0 ),
		Scale = 0.77,
    },
    {
        Model = "models/supermighty/600_chrome.mdl",
        Position = Vector( 46.7, 190.12, 58.05 ),
		Angles = Angle( 0, 180, 0 ),
		Scale = 0.77,
    },
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}
