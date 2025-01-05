if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent() --[[@as PhotonLibraryComponent]]

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Vehicle = "SuperMighty",
	Code = "Schmal"
}

COMPONENT.Title = "Ladder Truck Lights"
COMPONENT.Category = "Vehicle"
COMPONENT.IsVirtual = true


COMPONENT.Templates = {
	["Mesh"] = {
		Mesh_static = {
			Model = "models/supermighty/mesh/ladder_lights.mdl",
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
            Scale = 1.0,
		},
        Mesh_marker = {
			Model = "models/supermighty/mesh/ladder_lights.mdl",
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
            Scale = 1.001,
		},
	},
}
COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["~OFF"] = { Intensity = 0, IntensityTransitions = false },
        ["~OFF2"] = { Intensity = 0.1, IntensityTransitions = true },
        ["~SW"] = {
            --BloomColor = PhotonColor( 255, 195, 145 ):Blend( softWhite ):GetBlendColor(),
		    --DrawColor = PhotonColor( 255, 245, 120 ):Blend( softWhite ):GetBlendColor(),
            Inherit = "SW",
            Intensity = 1,
            IntensityLoss = 0.5,
            IntensityTransitions = true,
        },
    },
}
COMPONENT.Elements = {
	[1] = { "Mesh_static", Vector( 0, 0.07, 0 ), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/left_high", },
    [2] = { "Mesh_static", Vector( 0, 0.07, 0 ), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/right_high", },
    [3] = { "Mesh_static", Vector( 0, 0.07, 0 ), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/left_low", },
    [4] = { "Mesh_static", Vector( 0, 0.07, 0 ), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/right_low", },
    [5] = { "Mesh_marker", Vector( 0, 0.3, -0.028 ), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/marker_rear", DrawMaterial = "sentry/seagrave_ladder/lights", },
    [6] = { "Mesh_marker", Vector( 0, -0.1, -0.1), Angle( 0, 0, 0 ), "models/supermighty/watson_county/misc/mesh/marker_front", DrawMaterial = "sentry/seagrave_ladder/lights", },

}

COMPONENT.StateMap = "[~SW] 1 2 3 4 [R] 5 [A] 6"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
    ["HIGH_LEFT"] = {
        Frames = {
            [0] = "[~OFF2] 1",
            [1] = " 1",
            [2] = "1 2 3 4 5",
        },
        Sequences = {
			["ON"] = { 1 },
            ["WIGWAG"] = sequence():Alternate( 0, 1, 7 ),
        }
    },
    ["HIGH_RIGHT"] = {
        Frames = {
            [0] = "[~OFF2] 2",
            [1] = " 2",
        },
        Sequences = {
			["ON"] = { 1 },
            ["WIGWAG"] = sequence():Alternate( 1, 0, 7 ),
        }
    },
    ["LOW_LEFT"] = {
        Frames = {
            [1] = "3",
        },
        Sequences = {
			["ON"] = { 1 },
        }
    },
    ["LOW_RIGHT"] = {
        Frames = {
            [1] = "4",
        },
        Sequences = {
			["ON"] = { 1 },
        }
    },
    ["MARKER"] = {
        Frames = {
            [1] = "5 6",
        },
        Sequences = {
			["ON"] = { 1 },
        }
    },
}

COMPONENT.Inputs = {
   ["Vehicle.Lights"] = {
       ["PARKING"] = {
        LOW_LEFT = "ON",
        LOW_RIGHT = "ON",
        MARKER = "ON"
       },
       ["HEADLIGHTS"] = {
        LOW_LEFT = "ON",
        LOW_RIGHT = "ON",
        MARKER = "ON"
       },
       ["DRL"] = {
       },
   },
   ["Emergency.Warning"] = {
    ["MODE3"] = {
     HIGH_LEFT = "WIGWAG",
     HIGH_RIGHT = "WIGWAG",
    },
}, 
}