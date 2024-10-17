local QBCore = exports['qb-core']:GetCoreObject()
local isInSafeZone = {}


CreateThread(function()
    for zoneName, zoneData in pairs(Config.Bolgeler) do
        zoneData.blip = AddBlipForRadius(zoneData.location, zoneData.size)
        SetBlipAlpha(zoneData.blip, 128) 
        SetBlipColour(zoneData.blip, 2) 
        SetBlipDisplay(zoneData.blip, 2) 
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(zoneName) 
        EndTextCommandSetBlipName(zoneData.blip)
    end
end)

CreateThread(function()
    while true do
        local player = PlayerId()
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        for zoneName, zoneData in pairs(Config.Bolgeler) do
            local distance = #(coords - zoneData.location)
            zoneData.isInSafeZone = distance < zoneData.size
            isInSafeZone[zoneName] = zoneData.isInSafeZone

            if zoneData.isInSafeZone and not zoneData.wasInSafeZone then
                
                QBCore.Functions.Notify(Config.NotifyMessages.enter, 'success')
                zoneData.wasInSafeZone = true 
            elseif not zoneData.isInSafeZone and zoneData.wasInSafeZone then
                
                QBCore.Functions.Notify(Config.NotifyMessages.exit, 'error')
                zoneData.wasInSafeZone = false 
            end


            if zoneData.isInSafeZone then
                local myJob = QBCore.Functions.GetPlayerData().job.name


                if not IsWhitelistedJob(myJob) then
                    if Config.DisableDriveBy then
                        SetPlayerCanDoDriveBy(player, false)
                    end

                    if Config.AntiVDM then
                        Wait(0)
                        local vehList = GetGamePool('CVehicle')
                        for _, vehicle in pairs(vehList) do
                            SetEntityNoCollisionEntity(vehicle, ped, true)
                        end
                    end

  

                    if Config.DisableDrawWeapon then
                        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true) 
                    end
                end
            end
        end

        Wait(500)
    end
end)

CreateThread(function()
    while true do
        local isInAnySafeZone = false
        for _, isInZone in pairs(isInSafeZone) do
            if isInZone then
                isInAnySafeZone = true
                break
            end
        end

        if isInAnySafeZone then
            local myJob = QBCore.Functions.GetPlayerData().job.name
            if not IsWhitelistedJob(myJob) then
                if Config.DisablePunching then
                    DisableControlAction(0, 140, true) 
                    DisableControlAction(0, 141, true)
                    DisableControlAction(0, 142, true)
                end

                if Config.DisableFreeAim then
                    DisableControlAction(0, 25, true)
                end

                if Config.DisableShooting then
                    DisablePlayerFiring(PlayerId(), true) 
                end
            end
        end
        Wait(0)
    end
end)

function IsWhitelistedJob(job)
    for _, whitelistedJob in pairs(Config.WhitelistedJobs) do
        if job == whitelistedJob then
            return true
        end
    end
    return false
end


