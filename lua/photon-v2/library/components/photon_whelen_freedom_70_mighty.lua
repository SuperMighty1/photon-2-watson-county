if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "mighters",
	Code = "mighters"
}

COMPONENT.PrintName = [[Whelen Liberty Freedom ]]

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_freedom_70inch.mdl"

COMPONENT.SubMaterials = {
	--[2] = "models/supermighty/watson_county/lightbar_glass/liberty1",

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

COMPONENT.StateMap = "[R] 1 2 3 4 5 6 7 8 9 10 11 12 17 18 19 20 21 22 23 24 25 26 27 28 [W] 13 14 15 16"

COMPONENT.Elements = { 
	[1] = { "Primary", Vector( 7.92, 3.8, 1 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 7.92, -3.8, 1 ), Angle( 0, -90, 0 ) },
    [3] = { "Primary", Vector( 7.92, 3.8, -0.98 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 7.92, -3.8, -0.98 ), Angle( 0, -90, 0 ) },
    [5] = { "Primary", Vector( 7.92, 10.7, -0.98 ), Angle( 0, -90, 0 ) },
	[6] = { "Primary", Vector( 7.92, -10.7, -0.98 ), Angle( 0, -90, 0 ) },
    [7] = { "Primary", Vector( 7.92, 10.7, 1 ), Angle( 0, -90, 0 ) },
	[8] = { "Primary", Vector( 7.92, -10.7, 1 ), Angle( 0, -90, 0 ) },
    [9] = { "Primary", Vector( 7.92, 17.7, 1 ), Angle( 0, -90, 0 ) },
	[10] = { "Primary", Vector( 7.92, -17.7, 1 ), Angle( 0, -90, 0 ) },
    [11] = { "Primary", Vector( 7.92, 17.7, -0.98 ), Angle( 0, -90, 0 ) },
	[12] = { "Primary", Vector( 7.92, -17.7, -0.98 ), Angle( 0, -90, 0 ) },
    [13] = { "Primary", Vector( 7.92, 24.59, 1 ), Angle( 0, -90, 0 ) },
	[14] = { "Primary", Vector( 7.92, -24.59, 1 ), Angle( 0, -90, 0 ) },
    [15] = { "Primary", Vector( 7.92, 24.59, -0.98 ), Angle( 0, -90, 0 ) },
	[16] = { "Primary", Vector( 7.92, -24.59, -0.98 ), Angle( 0, -90, 0 ) },

    [17] = { "Primary", Vector( 7.92, 31.49, 1 ), Angle( 0, -90, 0 ) },
	[18] = { "Primary", Vector( 7.92, -31.49, 1 ), Angle( 0, -90, 0 ) },
    [19] = { "Primary", Vector( 7.92, 31.49, -0.98 ), Angle( 0, -90, 0 ) },
	[20] = { "Primary", Vector( 7.92, -31.49, -0.98 ), Angle( 0, -90, 0 ) },

    [21] = { "Corners", Vector( 5.2, 41.46, 1 ), Angle( 0, -56.7, 0 ) },
	[22] = { "Corners", Vector( 5.2, -41.46, 1 ), Angle( 0, -123, 0 ) },
    [23] = { "Corners", Vector( 5.2, 41.46, -0.98 ), Angle( 0, -56.7, 0 ) },
	[24] = { "Corners", Vector( 5.2, -41.46, -0.98 ), Angle( 0, -123, 0 ) },

    [25] = { "Corners", Vector( -5.2, 41.46, 1 ), Angle( 0, 56.7, 0 ) },
	[26] = { "Corners", Vector( -5.2, -41.46, 1 ), Angle( 0, 123, 0 ) },
    [27] = { "Corners", Vector( -5.2, 41.46, -0.98 ), Angle( 0, 56.7, 0 ) },
	[28] = { "Corners", Vector( -5.2, -41.46, -0.98 ), Angle( 0, 123, 0 ) },
    
}

COMPONENT.ElementGroups = {
	["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 },
    ["LEFT"] = { 2,4, 6,8,10,12,18,20,22,24,26,28 },
    ["RIGHT"] = {1,3,5,7,9,11,17,19,21,23,25,27},
    ["LEFT_ALT"] = { 2,4,6,8,10,12,27,25,23,21,19,17},
    ["RIGHT_ALT"] = { 1,3,5,7,9,11,28,26,24,22,20,18}
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "ALL",
            [2] = "LEFT",
            [3] = "RIGHT",
            [4] = "LEFT_ALT",
            [5] = "RIGHT_ALT",
		},
		Sequences = {
			["ON"] = { 1 },
            ["LEFT"] = { 2},
            ["FLASH"] = sequence():Blink(4, 4):Blink(5, 4),
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