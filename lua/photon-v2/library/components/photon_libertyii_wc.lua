if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New
COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Whelen Liberty II WC]]

COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/supermighty/whelen_liberty_ii_large.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1
}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 8.7,
			Height	= 8.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_detail.png").MaterialName,
			Scale = 2
		},
		Corner = {
			Width 	= 12.8,
			Height	= 16,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_detail.png").MaterialName,
		},
		Takedown = {
			Width 	= 7.4,
			Height	= 7,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_detail.png").MaterialName,
			Scale = 1
		},
		Half = {
			Width 	= 4.4,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
		},
		Alley = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
		},
		CornerEdge = {
			Width 	= 4.9,
			Height	= 4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_detail.png").MaterialName,
		},
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {}
	}
}

COMPONENT.ElementStates = {
	["2D"] = {
		["R1"] = {
			Inherit = "R",
			Intensity = 1,
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
		},
		["B1"] = {
			Inherit = "B",
			Intensity = 1,
			-- Alternate data format concept
			Transitions = {
				Intensity = { Gain = 10, Loss = 10 }
			},
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
			
		},
		["R0"] = {
			Inherit = "R1",
			Intensity = 0,
		},
		["B0"] = {
			Inherit = "B1",
			Intensity = 0,
		}
	}
}

COMPONENT.Elements = {
	[1] = { "Half", Vector( 6.29, 1.24, 0.36 ), Angle( 0, -90, 0 ) },
	[2] = { "Half", Vector( 6.29, -1.24, 0.36 ), Angle( 0, -90, 0 ) },

	[3] = { "Primary", Vector( 6.29, 7.18, 0.36 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 6.29, -7.18, 0.36 ), Angle( 0, -90, 0 ) },

	[5] = { "Takedown", Vector( 6.29, 14.28, 0.36 ), Angle( 0, -90, 0 ) },
	[6] = { "Takedown", Vector( 6.29, -14.28, 0.36 ), Angle( 0, -90, 0 ) },

	[7] = { "Primary", Vector( 6.29, 21.34, 0.36 ), Angle( 0, -90, 0 ) },
	[8] = { "Primary", Vector( 6.29, -21.34, 0.36 ), Angle( 0, -90, 0 ) },

	[9] = { "Corner", Vector( 4.08, 29.49, 0.39 ), Angle( 0, -90 + 45.9, 0 ) },
	[10] = { "Corner", Vector( 4.08, -29.49, 0.39 ), Angle( 0, -90 - 45.9, 0 ) },

	[11] = { "Alley", Vector( 0, 31.65, 0.4 ), Angle( 0, 0, 0 ) },
	[12] = { "Alley", Vector( 0, -31.65, 0.4 ), Angle( 0, 180, 0 ) },

	[13] = { "Corner", Vector( -4.08, 29.49, 0.39 ), Angle( 0, 90 - 45.9, 0 ) },
	[14] = { "Corner", Vector( -4.08, -29.49, 0.39 ), Angle( 0, 90 + 45.9, 0 ) },

	[15] = { "Primary", Vector( -6.29, 21.34, 0.36 ), Angle( 0, 90, 0 ) },
	[16] = { "Primary", Vector( -6.29, -21.34, 0.36 ), Angle( 0, 90, 0 ) },

	[17] = { "Primary", Vector( -6.29, 14.28, 0.36 ), Angle( 0, 90, 0 ) },
	[18] = { "Primary", Vector( -6.29, -14.28, 0.36 ), Angle( 0, 90, 0 ) },

	[19] = { "Primary", Vector( -6.29, 7.18, 0.36 ), Angle( 0, 90, 0 ) },
	[20] = { "Primary", Vector( -6.29, -7.18, 0.36 ), Angle( 0, 90, 0 ) },

	[21] = { "Half", Vector( -6.29, 1.24, 0.36 ), Angle( 0, 90, 0 ) },
	[22] = { "Half", Vector( -6.29, -1.24, 0.36 ), Angle( 0, 90, 0 ) },

	[23] = { "CornerEdge", Vector( 6.34, 26.66, 0.39 ), Angle( 0, -90, 0 ) },
	[24] = { "CornerEdge", Vector( 6.34, -26.66, 0.39 ), Angle( 0, -90, 0 ), Width = -4.9 },

	[25] = { "CornerEdge", Vector( 1.2, 31.65, 0.39 ), Angle( 0, 0, 0 ), Width = -4.9 },
	[26] = { "CornerEdge", Vector( 1.2, -31.65, 0.39 ), Angle( 0, 180, 0 ) },

	[27] = { "CornerEdge", Vector( -1.2, 31.65, 0.39 ), Angle( 0, 0, 0 ) },
	[28] = { "CornerEdge", Vector( -1.2, -31.65, 0.39 ), Angle( 0, 180, 0 ), Width = -4.9  },

	[29] = { "CornerEdge", Vector( -6.34, 26.66, 0.39 ), Angle( 0, 90, 0 ), Width = -4.9  },
	[30] = { "CornerEdge", Vector( -6.34, -26.66, 0.39 ), Angle( 0, 90, 0 ) },

	[31] = { "TakedownIllumination", Vector( 6.29, 14.28, 0.36 ), Angle( 0, -90, 0 ) },
	[32] = { "TakedownIllumination", Vector( 6.29, -14.28, 0.36 ), Angle( 0, -90, 0 ) },

	[33] = { "AlleyIllumination", Vector( 0, 31.65, 0.4 ), Angle( 0, 0, 0 ) },
	[34] = { "AlleyIllumination", Vector( 0, -31.65, 0.4 ), Angle( 0, 180, 0 ) },
}

COMPONENT.StateMap = "[R] 1 3 7 9 13 15 17 19 21 23 25 27 29 2 4 8 10 14 16 18 20 22 24 26 28 30 [W] 5 6 11 12 31 32 33 34"

COMPONENT.ElementGroups = {
	["Left"] = { 2, 4, 7, 9, 13, 23, 25, 27, 29 },
	["Right"] = { 1, 3, 8, 10, 14, 24, 26, 28, 30 },
	["L_Corner"] = { 9, 13, 23, 25, 27, 29 },
	["R_Corner"] = { 10, 14, 24, 26, 28, 30 },
}


COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 7 8 9 10 13 14 23 24 25 26 27 28 29 30",
			[2] = "Left",
			[3] = "Right",
			[4] = "Left:R1 Right:B0",
			[5] = "Left:R0 Right:B1"
		},
		Sequences = {
			["ON"] = { 2 },
            ["FLASH"] = sequence():Blink(2, 4):Blink(3, 4),
		}
	},
	Corner = {
		Frames = {
			[1] = "L_Corner:R R_Corner:B"
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	Takedown = {
		Frames = {
			[1] = "5 6 31 32",
			[2] = "5",
			[3] = "6",
			[4] = "5 6"
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	LeftAlley = {
		Frames = {
			[1] = "11 33",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	RightAlley = {
		Frames = {
			[1] = "12 34",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			All = "FLASH",
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ON"
		},
		["FLOOD"] = {
			Takedown = "ON"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			LeftAlley = "ON"
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			RightAlley = "ON"
		}
	},
	["Emergency.Marker"] = {
		["ON"] = { Corner = "ON" }
	}
}