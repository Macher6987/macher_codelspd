ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("10-50:request")
AddEventHandler("10-50:request", function(Officer)
    TriggerClientEvent("10-50:alert", -1, source, Officer)
end)

ESX.RegisterServerCallback('10-50:checkjob', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
     if xPlayer.job.name == 'police' then
        cb(true)
    else
        cb(false)
    end
end)