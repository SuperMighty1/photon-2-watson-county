if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "mighters",
	Code = "mighters"
}

COMPONENT.PrintName = [[Whelen Liberty Freedom Mini]]

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_freedom_mini.mdl"

COMPONENT.SubMaterials = {
	[2] = "models/supermighty/watson_county/lightbar_glass/liberty1",

}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 9.1,
			Height	= 4.2,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_detail.png").MaterialName,
			Scale = 0.1
		},
		Corners = {
			Width 	= 14,
			Height	= 4.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_detail.png").MaterialName,
			Scale = 1.8
		},
		SideTakedowns = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Scale = 1.8
		},
	}
}

COMPONENT.StateMap = "[R] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16"

COMPONENT.Elements = { 
	[1] = { "Primary", Vector( 7.92, 3.8, 1 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 7.92, -3.8, 1 ), Angle( 0, -90, 0 ) },
    [3] = { "Primary", Vector( 7.92, 3.8, -0.98 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 7.92, -3.8, -0.98 ), Angle( 0, -90, 0 ) },
    [5] = { "Corners", Vector( 5.22, 13.43, 1 ), Angle( 0, -57, 0 ) },
    [6] = { "Corners", Vector( 5.22, -13.43, 1 ), Angle( 0, -123, 0 ) },
    [7] = { "Corners", Vector( 5.22, 13.43, -1 ), Angle( 0, -57, 0 ) },
    [8] = { "Corners", Vector( 5.22, -13.43, -1 ), Angle( 0, -123, 0 ) },

    [9] = { "Corners", Vector( -5.22, 13.43, -1 ), Angle( 0, 57, 0 ) },
    [10] = { "Corners", Vector( -5.22, -13.43, -1 ), Angle( 0, 123, 0 ) },
    [11] = { "Corners", Vector( -5.22, 13.43, 1 ), Angle( 0, 57, 0 ) },
    [12] = { "Corners", Vector( -5.22, -13.43, 1 ), Angle( 0, 123, 0 ) },
    [13] = { "Primary", Vector( -7.92, 3.8, -0.98 ), Angle( 0, 90, 0 ) },
	[14] = { "Primary", Vector( -7.92, -3.8, -0.98 ), Angle( 0, 90, 0 ) },
    [15] = { "Primary", Vector( -7.92, 3.8, 1 ), Angle( 0, 90, 0 ) },
	[16] = { "Primary", Vector( -7.92, -3.8, 1 ), Angle( 0, 90, 0 ) },
}

COMPONENT.ElementGroups = {
	["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 },
    ["LEFT"] = {1, 3, 5, 7, 9, 11, 13, 15 },
    ["RIGHT"] = { 2, 4, 6, 8, 10, 12, 14, 16 }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "LEFT",
            [2] = "RIGHT",
		},
		Sequences = {
			["ON"] = { 1 },
			["FLASH"] = sequence():Blink(1, 4):Blink(2, 4),
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Mesh = "FLASH",
		},
	},
}