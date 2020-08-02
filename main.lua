ESX = nil
local talknpc = 99

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)
local VehiclesForSale = 0

-- Fetch Owned Cars
ESX.RegisterServerCallback('esx_pimpgarage:getOwnedCars', function(source, cb)
	local ownedCars = {}
	
	if Config.DontShowPoundCarsInGarage == true then
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND Type = @Type AND job = @job AND `stored` = @stored', {
			['@owner']  = GetPlayerIdentifiers(source)[1],
			['@Type']   = 'car',
			['@job']    = '',
			['@stored'] = talknpc
		}, function(data)
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				table.insert(ownedCars, {vehicle = vehicle, stored = v.stored, plate = v.plate})
			end
			cb(ownedCars)
		end)
	else
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND Type = @Type AND job = @job', {
			['@owner']  = GetPlayerIdentifiers(source)[1],
			['@Type']   = 'car',
			['@job']    = ''
		}, function(data)
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				table.insert(ownedCars, {vehicle = vehicle, stored = v.stored, plate = v.plate})
			end
			cb(ownedCars)
		end)
	end
end)

-- hämtar bilarna i garage LS
ESX.RegisterServerCallback("esx_pimpgarage:retrieveVehicles", function(source, cb)
	local src = source
	local identifier = ESX.GetPlayerFromId(src)["identifier"]
	-- om egna bilar bara ska visas: MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 1 and owner = @identifier",{['@identifier'] = identifier}, function(result)
        MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 1",{}, function(result)
		local vehicleTable = {}

        VehiclesForSale = 0

        if result[1] ~= nil then
            for i = 1, #result, 1 do
                VehiclesForSale = VehiclesForSale + 1
				local seller = false

				if result[i]["seller"] == identifier then
					seller = true
				end

                table.insert(vehicleTable, {["vehProps"] = json.decode(result[i]["vehicle"]), ["owner"] = seller })
            end
        end

        cb(vehicleTable)
    end)
end)

-- hämtar bilarna i garage SANDY
ESX.RegisterServerCallback("esx_pimpgarage:retrieveVehicles2", function(source, cb)
	local src = source
	local identifier = ESX.GetPlayerFromId(src)["identifier"]
	-- om egna bilar bara ska visas: MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 1 and owner = @identifier",{['@identifier'] = identifier}, function(result)
        MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 2",{}, function(result)
		local vehicleTable = {}

        VehiclesForSale = 0

        if result[1] ~= nil then
            for i = 1, #result, 1 do
                VehiclesForSale = VehiclesForSale + 1
				local seller = false

				if result[i]["seller"] == identifier then
					seller = true
				end

                table.insert(vehicleTable, {["vehProps"] = json.decode(result[i]["vehicle"]), ["owner"] = seller })
            end
        end

        cb(vehicleTable)
    end)
end)

-- hämtar bilarna i garage Palleto
ESX.RegisterServerCallback("esx_pimpgarage:retrieveVehicles3", function(source, cb)
	local src = source
	local identifier = ESX.GetPlayerFromId(src)["identifier"]
	-- om egna bilar bara ska visas: MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 1 and owner = @identifier",{['@identifier'] = identifier}, function(result)
        MySQL.Async.fetchAll("SELECT owner, vehicle FROM owned_vehicles WHERE stored = 3",{}, function(result)
		local vehicleTable = {}

        VehiclesForSale = 0

        if result[1] ~= nil then
            for i = 1, #result, 1 do
                VehiclesForSale = VehiclesForSale + 1
				local seller = false

				if result[i]["seller"] == identifier then
					seller = true
				end

                table.insert(vehicleTable, {["vehProps"] = json.decode(result[i]["vehicle"]), ["owner"] = seller })
            end
        end

        cb(vehicleTable)
    end)
end)


RegisterServerEvent('esx_pimpgarage:changestored')
AddEventHandler('esx_pimpgarage:changestored', function(plate1,state)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
local identifier = ESX.GetPlayerFromId(source)["identifier"]
	
MySQL.Async.execute("UPDATE owned_vehicles SET stored =@carthiefv2 WHERE owner=@identifier and plate=@vehProps", {['@identifier'] = identifier, ["@vehProps"] = plate1,['@carthiefv2'] = state})
end)

RegisterServerEvent('esx_pimpgarage:changenpc')
AddEventHandler('esx_pimpgarage:changenpc', function(npc)
local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    local identifier = ESX.GetPlayerFromId(source)["identifier"]
	talknpc = npc
	end)

-- Store Vehicles
ESX.RegisterServerCallback('esx_pimpgarage:storeVehicle', function (source, cb, vehicleProps)
	local ownedCars = {}
	local vehplate = vehicleProps.plate:match("^%s*(.-)%s*$")
	local vehiclemodel = vehicleProps.model
	local xPlayer = ESX.GetPlayerFromId(source)
	
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND @plate = plate', {
		['@owner'] = xPlayer.identifier,
		['@plate'] = vehicleProps.plate
	}, function (result)
		if result[1] ~= nil then
			local originalvehprops = json.decode(result[1].vehicle)
			if originalvehprops.model == vehiclemodel then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE owner = @owner AND plate = @plate', {
					['@owner']  = GetPlayerIdentifiers(source)[1],
					['@vehicle'] = json.encode(vehicleProps),
					['@plate']  = vehicleProps.plate
				}, function (rowsChanged)
					if rowsChanged == 0 then
						print(('esx_pimpgarage: %s attempted to store an vehicle they don\'t own!'):format(GetPlayerIdentifiers(source)[1]))
					end
					cb(true)
				end)
			else
				if Config.KickPossibleCheaters == true then
					if Config.UseCustomKickMessage == true then
					TriggerEvent('DiscordBot-makki3:cheatkick')
						print(('esx_pimpgarage: %s attempted to Cheat! Tried Storing: '..vehiclemodel..'. Original Vehicle: '..originalvehprops.model):format(GetPlayerIdentifiers(source)[1]))
						DropPlayer(source, _U('custom_kick'))
						cb(false)
					else
					TriggerEvent('DiscordBot-makki3:cheatkick')
						print(('esx_pimpgarage: %s attempted to Cheat! Tried Storing: '..vehiclemodel..'. Original Vehicle: '..originalvehprops.model):format(GetPlayerIdentifiers(source)[1]))
						DropPlayer(source, 'You have been Kicked from the Server for Possible Garage Cheating!!!')
						cb(false)
					end
				else
					print(('esx_pimpgarage: %s attempted to Cheat! Tried Storing: '..vehiclemodel..'. Original Vehicle: '..originalvehprops.model):format(GetPlayerIdentifiers(source)[1]))
					cb(false)
				end
			end
		else
			--print(('esx_pimpgarage: %s attempted to store an vehicle they don\'t own!'):format(GetPlayerIdentifiers(source)[1]))
			cb(false)
		end
	end)
end)
--
-- Fetch Pounded Cars
ESX.RegisterServerCallback('esx_pimpgarage:getOutOwnedCars', function(source, cb)
	local ownedCars = {}

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND Type = @Type AND job = @job AND `stored` = @stored', {
		['@owner'] = GetPlayerIdentifiers(source)[1],
		['@Type']   = 'car',
		['@job']    = '',
		['@stored'] = 0
	}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(ownedCars, vehicle)
		end
		cb(ownedCars)
	end)
end)

-- Pay to Return Broken Vehicles
RegisterServerEvent('esx_pimpgarage:payhealth')
AddEventHandler('esx_pimpgarage:payhealth', function(price)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', source, 'Du betalade SEK ' .. price)
	
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
		account.addMoney(price)
	end)
end)

function RetrievePlayerVehicles(newIdentifier, cb)
	local identifier = newIdentifier

	local yourVehicles = {}

	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner = @identifier", {['@identifier'] = identifier}, function(result) 

		for id, values in pairs(result) do

			local vehicle = json.decode(values.vehicle)
			local plate = values.plate

			table.insert(yourVehicles, { vehicle = vehicle, plate = plate })
		end

		cb(yourVehicles)

	end)
end

-- kollar om man har pengar för Pounded Cars
ESX.RegisterServerCallback('esx_pimpgarage:checkMoneyCars', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.get('money') >= Config.CarPoundPrice then
		cb(true)
	else
		cb(false)
	end
end)

-- ta betalt for Pounded Cars
RegisterServerEvent('esx_pimpgarage:payCar')
AddEventHandler('esx_pimpgarage:payCar', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(Config.CarPoundPrice)
	TriggerClientEvent('esx:showNotification', source, 'Du betalade SEK' .. Config.CarPoundPrice)
	
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
		account.addMoney(Config.CarPoundPrice)
	end)
end)

Trim = function(word)
	if word ~= nil then
		return word:match("^%s*(.-)%s*$")
	else
		return nil
	end
end