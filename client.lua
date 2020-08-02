Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
ESX = nil

local PlayerData              = {}
local JobBlips                = {}
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local userProperties          = {}
local this_Garage             = {}
local privateBlips            = {}
local garageintake            = {}


Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)

        TriggerEvent("esx:getSharedObject", function(response)
            ESX = response
        end)
    end

    if ESX.IsPlayerLoaded() then
		PlayerData = ESX.GetPlayerData()
		RemoveVehicles()
		RemoveVehicles2()
		Citizen.Wait(500)
		refreshBlips()
		SpawnVehicles()
		SpawnVehicles1()
    end
end)

-- Skapar Pedden för Fordon Garaget i LS NYA
Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do Wait(0) end
	local cords1 = vector3(-186.74, -580.96, 135.0)
	ped1 = createPed(999748158, cords1, 92.63)
	
	while true do
        local me = PlayerPedId()
        local sleep = 200
        local distance = GetDistanceBetweenCoords(GetEntityCoords(me), cords1)
        if distance > 30 then
		DeleteEntity(ped1)
		sleep = 200
			else
			if not DoesEntityExist(ped1) then
			ped1 = createPed(-2039072303, vector3(cords1), 92.63)
			else
			if distance > 2 then
			sleep = 200
			else
			 sleep = 5
            BeginTextCommandDisplayHelp('STRING')
            AddTextComponentSubstringPlayerName(('~INPUT_CONTEXT~ Prata med %s'):format('Ash Satoshi för att hämta ut ett Fordon.'))
            EndTextCommandDisplayHelp(0, false, true, -1)
			
			           if IsControlJustReleased(0, 38) then
					talknpc = 1
					TriggerServerEvent('esx_pimpgarage:changenpc',1)
        PointType = 'car_garage_point'
OpenMenuGarage(PointType)		
            end
			end
			end
			end
	Wait(sleep)
	end
	end)
	--
	-- Skapar Pedden för Fordon Garaget i SANDY NYA
Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do Wait(0) end
	local cords2 = vector3(969.02, -3002.71, -40.65)
	ped2 = createPed(999748158, cords2, 267.11)
	
	while true do
        local me = PlayerPedId()
        local sleep = 200
        local distance = GetDistanceBetweenCoords(GetEntityCoords(me), cords2)
		-- för att se npc.
        if distance > 30 then
		DeleteEntity(ped2)
		sleep = 200
			else
			if not DoesEntityExist(ped2) then
			ped2 = createPed(-2039072303, vector3(cords2), 267.11)
			else
			-- för att prata med npc.
			if distance > 2 then
			sleep = 200
			else
			 sleep = 5
            BeginTextCommandDisplayHelp('STRING')
            AddTextComponentSubstringPlayerName(('~INPUT_CONTEXT~ Prata med %s'):format('Brock Takeshi för att hämta ut ett Fordon.'))
            EndTextCommandDisplayHelp(0, false, true, -1)
			
			           if IsControlJustReleased(0, 38) then
					talknpc = 2
					TriggerServerEvent('esx_pimpgarage:changenpc',2)
        PointType = 'car_garage_point'
OpenMenuGarage(PointType)		
            end
			end
			end
			end
	Wait(sleep)
	end
	end)
	--
	-- Skapar Pedden för Fordon Garaget i Palleto NYA
Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do Wait(0) end
	local cords3 = vector3(-1266.96, -3012.52, -49.49)
	ped3 = createPed(-568861381, cords3, 1.63)
	
	while true do
        local me = PlayerPedId()
        local sleep = 200
        local distance = GetDistanceBetweenCoords(GetEntityCoords(me), cords3)
		-- för att se npcn.
        if distance > 70 then
		DeleteEntity(ped3)
		sleep = 200
			else
			if not DoesEntityExist(ped3) then
			ped3 = createPed(-568861381, vector3(cords3), 1.63)
			else
			-- för att prata med npc
			if distance > 2 then
			sleep = 200
			else
			 sleep = 5
            BeginTextCommandDisplayHelp('STRING')
            AddTextComponentSubstringPlayerName(('~INPUT_CONTEXT~ Prata med %s'):format('Misty Kasumi för att hämta ut ett Fordon.'))
            EndTextCommandDisplayHelp(0, false, true, -1)
			
			           if IsControlJustReleased(0, 38) then
					talknpc = 3
					TriggerServerEvent('esx_pimpgarage:changenpc',3)
        PointType = 'car_garage_point'
OpenMenuGarage(PointType)		
            end
			end
			end
			end
	Wait(sleep)
	end
	end)
	-- Skapar Pedden för Fordon Inpound i LS
	Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do Wait(0) end
	
    ped4 = createPed(-2039072303, vector3(408.43, -1624.54, 28.29), 214.93)
	 while true do
        local me = PlayerPedId()
        local sleep = 200
        local distance = GetDistanceBetweenCoords(GetEntityCoords(me), GetEntityCoords(ped4))
        if distance > 2.5 then
            sleep = 200
        else
            sleep = 5
            BeginTextCommandDisplayHelp('STRING')
            AddTextComponentSubstringPlayerName(('~INPUT_CONTEXT~ Prata med %s'):format('Olbap Rabocsc för att hämta ut ett Fordon.'))
            EndTextCommandDisplayHelp(0, false, true, -1)
            if IsControlJustReleased(0, 38) then
			
					talknpc = 4
					TriggerServerEvent('esx_pimpgarage:changenpc',4)
        PointType = 'car_pound_point'
OpenMenuGarage(PointType)			
            end
        end
        Wait(sleep)
    end
	end)
	
	-- Open Main Menu
function OpenMenuGarage(PointType)
	ESX.UI.Menu.CloseAll()
	
	local elements = {}
	if PointType == 'car_garage_point' then
		table.insert(elements, {label = 'Lista över ägda fordon.', value = 'list_owned_cars'})
	elseif PointType == 'car_store_point' then
		table.insert(elements, {label = 'Parkera ägd bil i garaget.', value = 'store_owned_cars'})
	elseif PointType == 'boat_store_point' then
		table.insert(elements, {label = 'store_owned_boats', value = 'store_owned_boats'})
		
	elseif PointType == 'aircraft_store_point' then
		table.insert(elements, {label = 'store_owned_aircrafts', value = 'store_owned_aircrafts'})
		
	elseif PointType == 'car_pound_point' then
		table.insert(elements, {label = 'Returnera ägd bil.'.." ($"..Config.CarPoundPrice..")", value = 'return_owned_cars'})
		
	elseif PointType == 'boat_pound_point' then
		table.insert(elements, {label = 'return_owned_boats'.." ($"..Config.BoatPoundPrice..")", value = 'return_owned_boats'})
		
	elseif PointType == 'aircraft_pound_point' then
		table.insert(elements, {label = 'return_owned_aircrafts' .." ($"..Config.AircraftPoundPrice..")", value = 'return_owned_aircrafts'})
		
	elseif PointType == 'policing_pound_point' then
		table.insert(elements, {label = _U('return_owned_policing').." ($"..Config.PolicingPoundPrice..")", value = 'return_owned_policing'})
		
	elseif PointType == 'ambulance_pound_point' then
		table.insert(elements, {label = _U('return_owned_ambulance').." ($"..Config.AmbulancePoundPrice..")", value = 'return_owned_ambulance'})
	end
	
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_menu', {
		title    = 'Garage',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		menu.close()
		local action = data.current.value
		
		if action == 'list_owned_cars' then
			ListOwnedCarsMenu()
		elseif action == 'list_owned_boats' then
			ListOwnedBoatsMenu()
		elseif action == 'list_owned_aircrafts' then
			ListOwnedAircraftsMenu()
		elseif action== 'store_owned_cars' then
			StoreOwnedCarsMenu()
		elseif action== 'store_owned_boats' then
			StoreOwnedBoatsMenu()
		elseif action== 'store_owned_aircrafts' then
			StoreOwnedAircraftsMenu()
		elseif action == 'return_owned_cars' then
			ReturnOwnedCarsMenu()
		elseif action == 'return_owned_boats' then
			ReturnOwnedBoatsMenu()
		elseif action == 'return_owned_aircrafts' then
			ReturnOwnedAircraftsMenu()
		elseif action == 'return_owned_policing' then
			ReturnOwnedPolicingMenu()
		elseif action == 'return_owned_ambulance' then
			ReturnOwnedAmbulanceMenu()
		end
	end, function(data, menu)
		menu.close()
	end)
end

-- List Owned Cars Menu
function ListOwnedCarsMenu()
	local elements = {}
	
	if Config.ShowGarageSpacer1 then
		table.insert(elements, {label = 'Om fordonet inte är här så kolla Fordonsdisponering!!!'})
	end
	
	if Config.ShowGarageSpacer2 then
		table.insert(elements, {label = '| Regnr | Fordonets namn | Plats |'})
	end
	
	if Config.ShowGarageSpacer3 then
		table.insert(elements, {label = '| Regnr | Fordonets namn |'})
	end
	
	ESX.TriggerServerCallback('esx_pimpgarage:getOwnedCars', function(ownedCars)
		if #ownedCars == 0 then
			ESX.ShowNotification('Du har inga bilar i garaget.')
		else	
			for _,v in pairs(ownedCars) do
				if Config.UseVehicleNamesLua then
					local hashVehicule = v.vehicle.model
					local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
					local vehicleName  = GetLabelText(aheadVehName)
					local plate        = v.plate
					local labelvehicle
					
					if Config.ShowVehicleLocation then
						if v.stored then
							labelvehicle = '| '..plate..' | '..vehicleName..' | '.._U('loc_garage')..' |'
						else
							labelvehicle = '| '..plate..' | '..vehicleName..' | '.._U('loc_pound')..' |'
						end
					else
						if v.stored then
							labelvehicle = '| '..plate..' | '..vehicleName..' |'
						else
							labelvehicle = '| '..plate..' | '..vehicleName..' |'
						end
					end
					
					table.insert(elements, {label = labelvehicle, value = v})
				else
					local hashVehicule = v.vehicle.model
					local vehicleName  = GetDisplayNameFromVehicleModel(hashVehicule)
					local plate        = v.plate
					local labelvehicle
					
					if Config.ShowVehicleLocation then
						if v.stored then
							labelvehicle = '| '..plate..' | '..vehicleName..' | '.._U('loc_garage')..' |'
						else
							labelvehicle = '| '..plate..' | '..vehicleName..' | '.._U('loc_pound')..' |'
						end
					else
						if v.stored then
							labelvehicle = '| '..plate..' | '..vehicleName..' |'
						else
							labelvehicle = '| '..plate..' | '..vehicleName..' |'
						end
					end
					
					table.insert(elements, {label = labelvehicle, value = v})
				end
			end
		end
		
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'spawn_owned_car', {
			title    = 'Bil Garage',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			if data.current.value.stored then
				menu.close()
				-- Garage spawn LS
				if talknpc == 1 then
				SpawnPointx = 365.08
				SpawnPointy = -79.67
				SpawnPointz = 68.35
				SpawnPointh = 250
				-- Garage spawn SANDY
				elseif talknpc == 2 then
				SpawnPointx = 1728.3
				SpawnPointy = 3715.04
				SpawnPointz = 33.76
				SpawnPointh = 22.96
				-- Garage spawn PALETO
				elseif talknpc == 3 then
				SpawnPointx = -238.84
				SpawnPointy = 6253.78
				SpawnPointz = 30.5
				SpawnPointh = 188.55
				else
				end
				
				
				SpawnVehicle(data.current.value.vehicle, data.current.value.plate)
				TriggerServerEvent('esx_pimpgarage:changestored', data.current.value.plate, 0)
				TriggerEvent("esx_pimpgarage:refreshVehicles", talknpc)
				menu.close()
			else
				ESX.ShowNotification(_U('car_is_impounded'))
			end
		end, function(data, menu)
			menu.close()
		end)
	end)
end

-- Spawn Vehicles
function SpawnVehicle(vehicle, plate)
	ESX.Game.SpawnVehicle(vehicle.model, {
		x = SpawnPointx,
		y = SpawnPointy,
		z = SpawnPointz + 1
	}, 232.14, function(callback_vehicle)
		ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
		SetVehRadioStation(callback_vehicle, "OFF")
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
	end)
	
	--TriggerServerEvent('esx_advancedgarage:setVehicleState', plate, false)
end

-- allt med cardisplay
RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(response)
	PlayerData = response
	
	LoadSellPlace()

	SpawnVehicles()
	SpawnVehicles1()
	SpawnVehicles3()
	refreshBlips()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)	
	ESX.PlayerData = xPlayer
	refreshBlips()
end)

RegisterNetEvent("esx_pimpgarage:refreshVehicles")
AddEventHandler("esx_pimpgarage:refreshVehicles", function(garage)
	if garage == 1 then
	RemoveVehicles()
	SpawnVehicles()
	elseif garage == 2 then
	RemoveVehicles2()
		SpawnVehicles1()
	elseif garage == 3 then
		SpawnVehicles3()
	end
	Citizen.Wait(500)
end)

-- Store Owned Cars Menu
function StoreOwnedCarsMenu()
	local playerPed  = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed,  false) then
		local playerPed    = GetPlayerPed(-1)
		local coords       = GetEntityCoords(playerPed)
		local vehicle      = GetVehiclePedIsIn(playerPed, false)
		local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
		local current 	   = GetPlayersLastVehicle(GetPlayerPed(-1), true)
		local engineHealth = GetVehicleEngineHealth(current)
		local plate        = vehicleProps.plate
		
		ESX.TriggerServerCallback('esx_pimpgarage:storeVehicle', function(valid)
			if valid then
				if engineHealth < 990 then
					if Config.UseDamageMult then
						local apprasial = math.floor((1000 - engineHealth)/1000*Config.CarPoundPrice*Config.DamageMult)
						RepairVehicle(apprasial, vehicle, vehicleProps)
					else
						local apprasial = math.floor((1000 - engineHealth)/1000*Config.CarPoundPrice)
						RepairVehicle(apprasial, vehicle, vehicleProps)
					end
				else
					StoreVehicle(vehicle, vehicleProps)
				end	
			else
				ESX.ShowNotification('Du kan inte förvara detta fordonet!')
			end
		end, vehicleProps)
	else
		ESX.ShowNotification('Där är inget fordon att parkera i garaget.')
	end
end
-- LS
function RemoveVehicles()
	local VehPos = Config.VehiclePositions

	for i = 1, #VehPos, 1 do
		local veh, distance = ESX.Game.GetClosestVehicle(VehPos[i])

		if DoesEntityExist(veh) and distance <= 1.0 then
			DeleteEntity(veh)
		end
	end
end
-- SS
function RemoveVehicles2()
	local VehPos = Config.VehiclePositions2

	for i = 1, #VehPos, 1 do
		local veh, distance = ESX.Game.GetClosestVehicle(VehPos[i])

		if DoesEntityExist(veh) and distance <= 1.0 then
			DeleteEntity(veh)
		end
	end
end
-- PB
function RemoveVehicles3()
	local VehPos = Config.VehiclePositions3

	for i = 1, #VehPos, 1 do
		local veh, distance = ESX.Game.GetClosestVehicle(VehPos[i])

		if DoesEntityExist(veh) and distance <= 1.0 then
			DeleteEntity(veh)
		end
	end
end


-- funktion för car display
-- CarDisplay LS
function SpawnVehicles()
	local VehPos = Config.VehiclePositions

	ESX.TriggerServerCallback("esx_pimpgarage:retrieveVehicles", function(vehicles)
		for i = 1, #vehicles, 1 do

			local vehicleProps = vehicles[i]["vehProps"]

			LoadModel(vehicleProps["model"])

			VehPos[i]["entityId"] = CreateVehicle(vehicleProps["model"], VehPos[i]["x"], VehPos[i]["y"], VehPos[i]["z"] - 0.975, VehPos[i]["h"], false)
			VehPos[i]["owner"] = vehicles[i]["owner"]

			ESX.Game.SetVehicleProperties(VehPos[i]["entityId"], vehicleProps)

			FreezeEntityPosition(VehPos[i]["entityId"], true)
			SetEntityAsMissionEntity(VehPos[i]["entityId"], true, true)
			SetModelAsNoLongerNeeded(vehicleProps["model"])
		end
	end)
end
-- CarDisplay Sandy Shores
function SpawnVehicles1()
	local VehPos = Config.VehiclePositions2

	ESX.TriggerServerCallback("esx_pimpgarage:retrieveVehicles2", function(vehicles)
		for i = 1, #vehicles, 1 do

			local vehicleProps = vehicles[i]["vehProps"]

			LoadModel(vehicleProps["model"])

			VehPos[i]["entityId"] = CreateVehicle(vehicleProps["model"], VehPos[i]["x"], VehPos[i]["y"], VehPos[i]["z"] - 0.975, VehPos[i]["h"], false)
			VehPos[i]["owner"] = vehicles[i]["owner"]

			ESX.Game.SetVehicleProperties(VehPos[i]["entityId"], vehicleProps)

			FreezeEntityPosition(VehPos[i]["entityId"], true)
			SetEntityAsMissionEntity(VehPos[i]["entityId"], true, true)
			SetModelAsNoLongerNeeded(vehicleProps["model"])
		end
	end)

end
-- CarDisplay S
function SpawnVehicles3()
	local VehPos = Config.VehiclePositions3

	ESX.TriggerServerCallback("esx_pimpgarage:retrieveVehicles3", function(vehicles)
		for i = 1, #vehicles, 1 do

			local vehicleProps = vehicles[i]["vehProps"]

			LoadModel(vehicleProps["model"])

			VehPos[i]["entityId"] = CreateVehicle(vehicleProps["model"], VehPos[i]["x"], VehPos[i]["y"], VehPos[i]["z"] - 0.975, VehPos[i]["h"], false)
			VehPos[i]["owner"] = vehicles[i]["owner"]

			ESX.Game.SetVehicleProperties(VehPos[i]["entityId"], vehicleProps)

			FreezeEntityPosition(VehPos[i]["entityId"], true)
			SetEntityAsMissionEntity(VehPos[i]["entityId"], true, true)
			SetModelAsNoLongerNeeded(vehicleProps["model"])
		end
	end)

end
--]]
-- Draw Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)
		local canSleep  = true
		
		if Config.UseCarGarages then
			for k,v in pairs(Config.CarGarages) do
				if (GetDistanceBetweenCoords(coords, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.DeleteMarker.x, Config.DeleteMarker.y, Config.DeleteMarker.z, Config.DeleteMarker.r, Config.DeleteMarker.g, Config.DeleteMarker.b, 100, false, true, 2, false, false, false, false)	
				end
			end
			
			for k,v in pairs(Config.CarPounds) do
				if (GetDistanceBetweenCoords(coords, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PoundMarker.x, Config.PoundMarker.y, Config.PoundMarker.z, Config.PoundMarker.r, Config.PoundMarker.g, Config.PoundMarker.b, 100, false, true, 2, false, false, false, false)
				end
			end
		end
		
		if Config.UseBoatGarages then
			for k,v in pairs(Config.BoatGarages) do
				if (GetDistanceBetweenCoords(coords, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PointMarker.x, Config.PointMarker.y, Config.PointMarker.z, Config.PointMarker.r, Config.PointMarker.g, Config.PointMarker.b, 100, false, true, 2, false, false, false, false)	
					DrawMarker(Config.MarkerType, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.DeleteMarker.x, Config.DeleteMarker.y, Config.DeleteMarker.z, Config.DeleteMarker.r, Config.DeleteMarker.g, Config.DeleteMarker.b, 100, false, true, 2, false, false, false, false)	
				end
			end
			
			for k,v in pairs(Config.BoatPounds) do
				if (GetDistanceBetweenCoords(coords, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PoundMarker.x, Config.PoundMarker.y, Config.PoundMarker.z, Config.PoundMarker.r, Config.PoundMarker.g, Config.PoundMarker.b, 100, false, true, 2, false, false, false, false)
				end
			end
		end
		
		if Config.UseAircraftGarages then
			for k,v in pairs(Config.AircraftGarages) do
				if (GetDistanceBetweenCoords(coords, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PointMarker.x, Config.PointMarker.y, Config.PointMarker.z, Config.PointMarker.r, Config.PointMarker.g, Config.PointMarker.b, 100, false, true, 2, false, false, false, false)	
					DrawMarker(Config.MarkerType, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.DeleteMarker.x, Config.DeleteMarker.y, Config.DeleteMarker.z, Config.DeleteMarker.r, Config.DeleteMarker.g, Config.DeleteMarker.b, 100, false, true, 2, false, false, false, false)	
				end
			end
			
			for k,v in pairs(Config.AircraftPounds) do
				if (GetDistanceBetweenCoords(coords, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, true) < 10) then
					canSleep = false
					DrawMarker(Config.MarkerType, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PoundMarker.x, Config.PoundMarker.y, Config.PoundMarker.z, Config.PoundMarker.r, Config.PoundMarker.g, Config.PoundMarker.b, 100, false, true, 2, false, false, false, false)
				end
			end
		end
		
		if Config.UsePrivateCarGarages then
			for k,v in pairs(Config.PrivateCarGarages) do
				if not v.Private or has_value(userProperties, v.Private) then
					if (GetDistanceBetweenCoords(coords, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, true) < 10) then
						canSleep = false
						DrawMarker(Config.MarkerType, v.GaragePoint.x, v.GaragePoint.y, v.GaragePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.PointMarker.x, Config.PointMarker.y, Config.PointMarker.z, Config.PointMarker.r, Config.PointMarker.g, Config.PointMarker.b, 100, false, true, 2, false, false, false, false)	
						DrawMarker(Config.MarkerType, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.DeleteMarker.x, Config.DeleteMarker.y, Config.DeleteMarker.z, Config.DeleteMarker.r, Config.DeleteMarker.g, Config.DeleteMarker.b, 100, false, true, 2, false, false, false, false)	
					end
				end
			end
		end
		
		if Config.UseJobCarGarages then
			if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'police' then
				for k,v in pairs(Config.PolicePounds) do
					if (GetDistanceBetweenCoords(coords, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, true) < 10) then
						canSleep = false
						DrawMarker(Config.MarkerType, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.JobPoundMarker.x, Config.JobPoundMarker.y, Config.JobPoundMarker.z, Config.JobPoundMarker.r, Config.JobPoundMarker.g, Config.JobPoundMarker.b, 100, false, true, 2, false, false, false, false)
					end
				end
			end
			
			if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then
				for k,v in pairs(Config.AmbulancePounds) do
					if (GetDistanceBetweenCoords(coords, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, true) < 10) then
						canSleep = false
						DrawMarker(Config.MarkerType, v.PoundPoint.x, v.PoundPoint.y, v.PoundPoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.JobPoundMarker.x, Config.JobPoundMarker.y, Config.JobPoundMarker.z, Config.JobPoundMarker.r, Config.JobPoundMarker.g, Config.JobPoundMarker.b, 100, false, true, 2, false, false, false, false)
					end
				end
			end
		end
		
		if canSleep then
			Citizen.Wait(500)
		end
	end
end)


AddEventHandler('esx_pimpgarage:hasEnteredMarker', function(zone)
	if zone == 'car_store_point' then
		CurrentAction     = 'car_store_point'
		CurrentActionMsg  = 'Tryck ~INPUT_PICKUP~ för att parkera fordonet i garaget.'
		CurrentActionData = {}
		end
		end)
		
		-- Exited Marker
AddEventHandler('esx_pimpgarage:hasExitedMarker', function()
	ESX.UI.Menu.CloseAll()
	garageintake = nil
	CurrentAction = nil
end)

-- Activate Menu when in Markers
Citizen.CreateThread(function()
	local currentZone = 'garage'
	while true do
		Citizen.Wait(1)
		
		local playerPed  = PlayerPedId()
		local coords     = GetEntityCoords(playerPed)
		local isInMarker = false
		
		if Config.UseCarGarages then
		
			for k,v in pairs(Config.CarGarages) do				
				if(GetDistanceBetweenCoords(coords, v.DeletePoint.x, v.DeletePoint.y, v.DeletePoint.z, true) < Config.DeleteMarker.x) then
					isInMarker  = true
					garageintake = k
					this_Garage = v
					currentZone = 'car_store_point'					
				end
			end
		end
		
		
		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('esx_pimpgarage:hasEnteredMarker', currentZone)
		end
		
		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_pimpgarage:hasExitedMarker', LastZone)
		end
		
		if not isInMarker then
			Citizen.Wait(500)
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if CurrentAction ~= nil then
		TriggerEvent('esx:showHelpNotification', msg)
			if IsControlJustReleased(0, Keys['E']) then
				if CurrentAction == 'car_store_point' then
					OpenMenuGarage('car_store_point')
				elseif CurrentAction == 'car_pound_point' then
					OpenMenuGarage('car_pound_point')
				end
				
				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

-- Repair Vehicles
function RepairVehicle(apprasial, vehicle, vehicleProps)
	ESX.UI.Menu.CloseAll()
	
	local elements = {
		{label = 'Returnera fordonet.' .. " ($"..apprasial..")", value = 'yes'},
		{label = 'Besök en mekaniker.', value = 'no'}
	}
	
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'delete_menu', {
		title    = 'Fordonet är skadat!',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		menu.close()
		
		if data.current.value == 'yes' then
			TriggerServerEvent('esx_pimpgarage:payhealth', apprasial)
			vehicleProps.bodyHealth = 1000.0 -- must be a decimal value!!!
			vehicleProps.engineHealth = 1000
			StoreVehicle(vehicle, vehicleProps)
		elseif data.current.value == 'no' then
			ESX.ShowNotification('Besök en mekaniker eller laga fordonet själv.')
		end
	end, function(data, menu)
		menu.close()
	end)
end

-- Store Vehicles
function StoreVehicle(vehicle, vehicleProps)
	--TriggerServerEvent('esx_advancedgarage:setVehicleState', vehicleProps.plate, 1)
	local states = 99
	if garageintake == 'Garage_CentralLS' then
	states = 1
	elseif garageintake == 'Garage_Sandy' then
	states = 2
	elseif garageintake == 'Garage_Paleto' then
	states = 3
	end
	TriggerServerEvent('esx_pimpgarage:changestored', vehicleProps.plate, states)
	ESX.Game.DeleteVehicle(vehicle)
	ESX.ShowNotification('Ditt fordon är parkerat i garaget.')

end

-- skapar ped för garaget.
createPed = function(hash, coords, heading)
    RequestModel(hash)
    while not HasModelLoaded(hash) do Wait(5) end
    local peds = CreatePed(4, hash, coords, false, false)
    SetEntityHeading(peds, heading)
    SetEntityAsMissionEntity(peds, true, true)
    SetEntityInvincible(peds, true)
    SetPedHearingRange(peds, 0.0)
    SetPedSeeingRange(peds, 0.0)
    SetPedAlertness(peds, 0.0)
    SetBlockingOfNonTemporaryEvents(peds, true)
    SetPedCombatAttributes(peds, 46, true)
    SetPedFleeAttributes(peds, 0, 0)
	FreezeEntityPosition(peds, true)
    return peds
end

-- skapa blips
function refreshBlips()
	local blipList = {}
	local JobBlips = {}

	if Config.UseCarGarages then
		for k,v in pairs(Config.CarGarages) do
			table.insert(blipList, {
				coords = { v.DeletePoint.x, v.DeletePoint.y },
				text   = 'Garage | Offentlig',
				sprite = Config.BlipGarage.Sprite,
				color  = Config.BlipGarage.Color,
				scale  = Config.BlipGarage.Scale
			})
		end
		
		for k,v in pairs(Config.CarPounds) do
			table.insert(blipList, {
				coords = { v.PoundPoint.x, v.PoundPoint.y },
				text   = 'Garage | Fordonsdisponering',
				sprite = Config.BlipPound.Sprite,
				color  = Config.BlipPound.Color,
				scale  = Config.BlipPound.Scale
			})
		end
	end
	
	if Config.UseBoatGarages then
		for k,v in pairs(Config.BoatGarages) do
			table.insert(blipList, {
				coords = { v.GaragePoint.x, v.GaragePoint.y },
				text   = 'Garage | Offentlig',
				sprite = Config.BlipGarage.Sprite,
				color  = Config.BlipGarage.Color,
				scale  = Config.BlipGarage.Scale
			})
		end
		
		for k,v in pairs(Config.BoatPounds) do
			table.insert(blipList, {
				coords = { v.PoundPoint.x, v.PoundPoint.y },
				text   = 'Garage | Fordonsdisponering',
				sprite = Config.BlipPound.Sprite,
				color  = Config.BlipPound.Color,
				scale  = Config.BlipPound.Scale
			})
		end
	end
	
	if Config.UseAircraftGarages then
		for k,v in pairs(Config.AircraftGarages) do
			table.insert(blipList, {
				coords = { v.GaragePoint.x, v.GaragePoint.y },
				text   = _U('blip_garage'),
				sprite = Config.BlipGarage.Sprite,
				color  = Config.BlipGarage.Color,
				scale  = Config.BlipGarage.Scale
			})
		end
		
		for k,v in pairs(Config.AircraftPounds) do
			table.insert(blipList, {
				coords = { v.PoundPoint.x, v.PoundPoint.y },
				text   = 'Garage | Fordonsdisponering',
				sprite = Config.BlipPound.Sprite,
				color  = Config.BlipPound.Color,
				scale  = Config.BlipPound.Scale
			})
		end
	end
	
	if Config.UseJobCarGarages then
		if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'police' then
			for k,v in pairs(Config.PolicePounds) do
				table.insert(JobBlips, {
					coords = { v.PoundPoint.x, v.PoundPoint.y },
					text   = _U('blip_police_pound'),
					sprite = Config.BlipJobPound.Sprite,
					color  = Config.BlipJobPound.Color,
					scale  = Config.BlipJobPound.Scale
				})
			end
		end
		
		if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then
			for k,v in pairs(Config.AmbulancePounds) do
				table.insert(JobBlips, {
					coords = { v.PoundPoint.x, v.PoundPoint.y },
					text   = _U('blip_ambulance_pound'),
					sprite = Config.BlipJobPound.Sprite,
					color  = Config.BlipJobPound.Color,
					scale  = Config.BlipJobPound.Scale
				})
			end
		end
	end

	for i=1, #blipList, 1 do
		CreateBlip(blipList[i].coords, blipList[i].text, blipList[i].sprite, blipList[i].color, blipList[i].scale)
	end
	
	for i=1, #JobBlips, 1 do
		CreateBlip(JobBlips[i].coords, JobBlips[i].text, JobBlips[i].sprite, JobBlips[i].color, JobBlips[i].scale)
	end
end

function CreateBlip(coords, text, sprite, color, scale)
	local blip = AddBlipForCoord(table.unpack(coords))
	
	SetBlipSprite(blip, sprite)
	SetBlipScale(blip, scale)
	--SetBlipColour(blip, color)
	SetBlipAsShortRange(blip, true)
	
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandSetBlipName(blip)
	table.insert(JobBlips, blip)
end

LoadModel = function(model)
	while not HasModelLoaded(model) do
		RequestModel(model)

		Citizen.Wait(1)
	end
end


-- Spawn Pound Vehicles
function SpawnPoundedVehicle(vehicle, plate)
	ESX.Game.SpawnVehicle(vehicle.model, {
		x = 404.17,
		y = -1639.06,
		z = 29.29
	}, 232.14, function(callback_vehicle)
		ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
		SetVehRadioStation(callback_vehicle, "OFF")
		--TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
	end)
	TriggerServerEvent('esx_pimpgarage:changestored', plate, 0)
end

-- Pound Owned Cars Menu
function ReturnOwnedCarsMenu()
	ESX.TriggerServerCallback('esx_pimpgarage:getOutOwnedCars', function(ownedCars)
		local elements = {}
		
		if Config.ShowPoundSpacer2 then
			table.insert(elements, {label = '| Regnr | Fordonets namn | Plats |'})
		end
		
		if Config.ShowPoundSpacer3 then
			table.insert(elements, {label = '| Regnr | Fordonets namn |'})
		end
		
		for _,v in pairs(ownedCars) do
			if Config.UseVehicleNamesLua then
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				local labelvehicle
				
				labelvehicle = '| '..plate..' | '..vehicleName..' | '.. 'Lämna tillbaka' ..' |'
				
				table.insert(elements, {label = labelvehicle, value = v})
			else
				local hashVehicule = v.model
				local vehicleName  = GetDisplayNameFromVehicleModel(hashVehicule)
				local plate        = v.plate
				local labelvehicle
				
				labelvehicle = '| '..plate..' | '..vehicleName..' | '.. 'Lämna tillbaka' ..' |'
				
				table.insert(elements, {label = labelvehicle, value = v})
			end
		end
		
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'return_owned_car', {
			title    = 'Fordonsdisponering',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			ESX.TriggerServerCallback('esx_pimpgarage:checkMoneyCars', function(hasEnoughMoney)
				if hasEnoughMoney then
					TriggerServerEvent('esx_pimpgarage:payCar')
					TriggerEvent('esx:showNotification','Sådär fixat Bror. din bil står där borta.')
					SpawnPoundedVehicle(data.current.value, data.current.value.plate)
					menu.close()
				else
					ESX.ShowNotification('Du har inte tillräckligt med pengar!')
					menu.close()
				end
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end
