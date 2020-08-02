Config = {}
Config.Locale = 'en'
Config.KickPossibleCheaters = true -- If true it will kick the player that tries store a vehicle that they changed the Hash or Plate.
Config.UseCustomKickMessage = true
Config.DontShowPoundCarsInGarage = true -- If set to true it won't show Cars at the Pound in the Garage.
Config.UseCarGarages        = true -- Allows use of Car Garages.
Config.UseVehicleNamesLua        = true

Config.ShowGarageSpacer1 = true -- If true it shows Spacer 1 in the List.
Config.ShowGarageSpacer2 = false -- If true it shows Spacer 2 in the List | Don't use if spacer3 is set to true.
Config.ShowGarageSpacer3 = true -- If true it shows Spacer 3 in the List | Don't use if Spacer2 is set to true.

Config.ShowPoundSpacer2 = false -- If true it shows Spacer 2 in the List | Don't use if spacer3 is set to true.
Config.ShowPoundSpacer3 = true -- If true it shows Spacer 3 in the List | Don't use if Spacer2 is set to true.
Config.CarPoundPrice = 1000 -- Car Pound Price.

Config.MarkerType   = 27

Config.BlipGarage = {
	Sprite = 290,
	Color = 38,
	Display = 2,
	Scale = 1.0
}
Config.BlipPound = {
	Sprite = 67,
	Color = 64,
	Display = 2,
	Scale = 1.0
}
Config.PointMarker = {
	r = 0, g = 255, b = 0,     -- Green Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

Config.DeleteMarker = {
	r = 255, g = 0, b = 0,     -- Red Color
	x = 5.0, y = 5.0, z = 1.0  -- Big Size Circle
}

Config.PoundMarker = {
	r = 0, g = 0, b = 100,     -- Blue Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

Config.JobPoundMarker = {
	r = 255, g = 0, b = 0,     -- Red Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

Config.CarGarages = {
--- LS PARKERING
	Garage_CentralLS = {
		SpawnPoint = { x = 274.86, y = -328.72, z = 43.92, h = 220.61 },
		DeletePoint = { x = 362.33, y = -72.42, z = 66.29 }
	},
	Garage_Sandy = {
		SpawnPoint = { x = 1730.06, y = 3714.62, z = 33.15, h = 20 },
		DeletePoint = { x = 1722.66, y = 3713.74, z = 33.26 }
	},
	Garage_Paleto = {
		SpawnPoint = { x = -235.26, y = 6247.09, z = 30.49, h = 147.86 },
		DeletePoint = { x = -221.3572, y = 6249.51, z = 30.49 }
	}
	--[[
	Garage_Prison = {
		SpawnPoint = { x = 1855.11, y = 2592.72, z = 44.67, h = 274.8 },
		DeletePoint = { x = 1855.21, y = 2615.3, z = 34.67 } -- z = 44.67
	},
	Garage_RaceTrack = {
		SpawnPoint = { x = 1199.02, y = 330.92, z = 80.99, h = 144.86 },
		DeletePoint = { x = 1207.9, y = 343.8, z = 80.99 }
	}
	--]]
}
-- CarPounds
Config.CarPounds = {
	Pound_LosSantos = {
		PoundPoint = { x = 408.61, y = -1625.47, z = 28.29 },
		SpawnPoint = { x = 405.64, y = -1643.4, z = 27.61, h = 229.54 }
	},
	Pound_Sandy = {
		PoundPoint = { x = 1651.38, y = 3804.84, z = 37.65 },
		SpawnPoint = { x = 1627.84, y = 3788.45, z = 33.77, h = 308.53 }
	}
	--[[
	Pound_Paleto = {
		PoundPoint = { x = -234.82, y = 6198.65, z = 30.94 },
		SpawnPoint = { x = -230.08, y = 6190.24, z = 30.49, h = 140.24 }
	}
	--]]
}
-- LS GARAGET!
Config.VehiclePositions = {
--första våningen
{
        ["x"] = -190.86, 
        ["y"] = -575.51, 
        ["z"] = 136.0, 
        ["h"] = 227.76
    },
{
        ["x"] = -187.84, 
        ["y"] = -573.12, 
        ["z"] = 136.0, 
        ["h"] = 210.71
    },
    {
        ["x"] = -184.59, 
        ["y"] = -571.6, 
        ["z"] = 136.0, 
        ["h"] = 194.32
    },
    {
        ["x"] = -181.16, 
        ["y"] = -571.88, 
        ["z"] = 136.0, 
        ["h"] = 171.77
    },
	{
        ["x"] = -178.0, 
        ["y"] = -573.27, 
        ["z"] = 136.0, 
        ["h"] = 152.99
    },
	{
        ["x"] = -174.22, 
        ["y"] = -574.88, 
        ["z"] = 136.0, 
        ["h"] = 129.85
    },
 {
        ["x"] = -172.52, 
        ["y"] = -578.75, 
        ["z"] = 136.0, 
        ["h"] = 93.06
    },
    {
        ["x"] = -172.48, 
        ["y"] = -582.25, 
        ["z"] = 136.0, 
        ["h"] = 82.79
    },
	 {
        ["x"] = -174.14, 
        ["y"] = -586.23, 
        ["z"] = 136.0, 
        ["h"] = 51.46
    },
-- Andra våningen
    {
        ["x"] = -188.54, 
        ["y"] = -574.28, 
        ["z"] = 141.35, 
        ["h"] = 221.85
    },
	
 {
        ["x"] = -185.52, 
        ["y"] = -572.12, 
        ["z"] = 141.35, 
        ["h"] = 203.46
    },
{
        ["x"] = -181.65, 
        ["y"] = -572.26, 
        ["z"] = 141.35, 
        ["h"] = 183.15
    },
    {
       ["x"] = -177.62, 
        ["y"] = -573.01, 
        ["z"] = 141.35, 
        ["h"] = 151.1
    },
{
        ["x"] = -174.7, 
        ["y"] = -575.01, 
        ["z"] = 141.35, 
        ["h"] = 130.74
    },
--
    {
        ["x"] = -172.87, 
        ["y"] = -578.03, 
        ["z"] = 141.35, 
        ["h"] = 110.36
    },
  {
        ["x"] = -172.29, 
        ["y"] = -581.85, 
        ["z"] = 141.35, 
        ["h"] = 92.89
    },
--
    {
        ["x"] = -173.89, 
        ["y"] = -585.66, 
        ["z"] = 141.35, 
        ["h"] = 70.42
    },
-- Tredje vånningen
    {
        ["x"] = -189.47, 
        ["y"] = -573.64, 
        ["z"] = 146.69, 
        ["h"] = 228.2
    },
    {
        ["x"] = -185.78, 
        ["y"] = -571.98, 
        ["z"] = 146.69,
        ["h"] = 202.26
    },

    {
        ["x"] = -181.65, 
        ["y"] = -571.11, 
        ["z"] = 146.69, 
        ["h"] = 185.31
    },
	 {
        ["x"] = -177.46, 
        ["y"] = -572.17, 
        ["z"] = 146.69, 
        ["h"] = 155.26
    },
	{
        ["x"] = -174.34, 
        ["y"] = -574.22, 
        ["z"] = 146.69, 
        ["h"] = 142.3
    },
	{
        ["x"] = -171.68, 
        ["y"] = -577.7, 
        ["z"] = 146.69, 
        ["h"] = 103.69
    },
	{
        ["x"] = -172.19, 
        ["y"] = -581.68, 
        ["z"] = 146.69, 
        ["h"] = 99.65
    },
	{
        ["x"] = -172.18, 
        ["y"] = -585.22, 
        ["z"] = 146.69, 
        ["h"] = 99.65
    }
}
-- Sandy Shore garaget
Config.VehiclePositions2 = {
--första raden
{
        ["x"] = 987.29, 
        ["y"] = -2994.81, 
        ["z"] = -39.65, 
        ["h"] = 178.39
    },
	{
        ["x"] = 990.83, 
        ["y"] = -2994.81, 
        ["z"] = -39.65, 
        ["h"] = 178.39
    },
	{
        ["x"] = 994.77, 
        ["y"] = -2994.81, 
        ["z"] = -39.65, 
        ["h"] = 178.39
    },
	{
        ["x"] = 998.2, 
        ["y"] = -2994.81, 
        ["z"] = -39.65, 
        ["h"] = 178.39
    },
	-- andra raden
	{
        ["x"] = 1001.86, 
        ["y"] = -3003.15, 
        ["z"] = -39.65, 
        ["h"] = 95.64
    },
	{
        ["x"] = 1001.86, 
        ["y"] = -3005.66, 
        ["z"] = -39.65, 
        ["h"] = 95.64
    },
	{
        ["x"] = 1001.86, 
        ["y"] = -3008.97, 
        ["z"] = -39.65, 
        ["h"] = 95.64
    },
	{
        ["x"] = 1001.86, 
        ["y"] = -3011.83, 
        ["z"] = -39.65, 
        ["h"] = 95.64
    },
	{
        ["x"] = 1001.86, 
        ["y"] = -3015.29, 
        ["z"] = -39.65, 
        ["h"] = 95.64
    },
	-- tredje raden
	{
        ["x"] = 993.09, 
        ["y"] = -3012.69,
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 989.39, 
        ["y"] = -3012.69, 
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 985.77, 
        ["y"] = -3012.69, 
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 982.86, 
        ["y"] = -3013.16, 
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 979.85, 
        ["y"] = -3013.62, 
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 977.2, 
        ["y"] = -3015.08,
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	{
        ["x"] = 974.35, 
        ["y"] = -3015.08,
        ["z"] = -39.65, 
        ["h"] = 3.08
    },
	-- rad 4
	{
        ["x"] = 960.41, 
         ["y"] = -3020.55,
        ["z"] = -39.65, 
        ["h"] = 266.05
    },
	{
        ["x"] = 960.41, 
         ["y"] = -3023.2,
        ["z"] = -39.65, 
        ["h"] = 266.05
    },
	{
        ["x"] = 960.41, 
         ["y"] = -3026.18,
        ["z"] = -39.65, 
        ["h"] = 266.05
    },
	{
        ["x"] = 960.41, 
         ["y"] = -3028.85,
        ["z"] = -39.65, 
        ["h"] = 266.05
    }
}
-- Paletto garaget
Config.VehiclePositions3 = {
{
 ["x"] = -1251.39, 
 ["y"] = -2970.22,
 ["z"] = -48.49, 
 ["h"] = 176.66
}
}