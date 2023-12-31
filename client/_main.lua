StartNPC, HasGold = {},

Citizen.CreateThread(function()
    StartNPC = SpawnNPC(START_NPC.ped.model, START_NPC.ped.coords, START_NPC.ped.heading)
    FreezeEntityPosition(StartNPC, true)
    SetEntityInvincible(StartNPC, true)
    SetBlockingOfNonTemporaryEvents(StartNPC, true)
    TaskStartScenarioInPlace(StartNPC, "WORLD_HUMAN_SMOKING", 0, true)
    AddEntityMenuItem({
        entity = StartNPC,
        event = "azakit_startnpc:Check",
        desc = _("start_npc")
    })

    
    StartNPC2 = SpawnNPC(START_NPC2.ped.model, START_NPC2.ped.coords, START_NPC2.ped.heading)
    FreezeEntityPosition(StartNPC2, true)
    SetEntityInvincible(StartNPC2, true)
    SetBlockingOfNonTemporaryEvents(StartNPC2, true)
    TaskStartScenarioInPlace(StartNPC2, "WORLD_HUMAN_SMOKING", 0, true)
    AddEntityMenuItem({
        entity = StartNPC2,
        event = "azakit_startnpc:Check2",
        desc = _("start_npc2")
    })

    
    StartNPC3 = SpawnNPC(START_NPC3.ped.model, START_NPC3.ped.coords, START_NPC3.ped.heading)
    FreezeEntityPosition(StartNPC3, true)
    SetEntityInvincible(StartNPC3, true)
    SetBlockingOfNonTemporaryEvents(StartNPC3, true)
    TaskStartScenarioInPlace(StartNPC3, "WORLD_HUMAN_SMOKING", 0, true)    
    AddEntityMenuItem({
        entity = StartNPC3,
        event = "azakit_startnpc:Check3",
        desc = _("start_npc3")
    })
end)

RegisterNetEvent('azakit_startnpc:Check', function()
   
    local hasItem = true
    lib.notify({
        position = 'top',
        title = _("check_1"),
        type = 'info'
      })
    
    if ITEM then
        hasItem = false
        
        TriggerServerCallback('azakit_startnpc:itemTaken', function(cb)
        hasItem = cb
        
        end)
        Wait(1000)
    end
    if hasItem then
        onjob = true
        TriggerEvent(EVENT)
    else
        lib.notify({
            position = 'top',
            title = _("noitem_1"),
            type = 'error'
          })
    end
end)

RegisterNetEvent('azakit_startnpc:Check2', function()
   
    local hasItem = true
    lib.notify({
        position = 'top',
        title = _("check_2"),
        type = 'info'
      })
    
    if ITEM2 then
        hasItem = false
        
        TriggerServerCallback('azakit_startnpc:itemTaken2', function(cb)
        hasItem = cb
        
        end)
        Wait(1000)
    end
    if hasItem then
        onjob = true
        TriggerEvent(EVENT2)
    else
        lib.notify({
            position = 'top',
            title = _("noitem_2"),
            type = 'error'
          })
    end
end)



RegisterNetEvent('azakit_startnpc:Check3', function()
   
    local hasItem = true
    lib.notify({
        position = 'top',
        title = _("check_3"),
        type = 'info'
      })
    
    if ITEM2 then
        hasItem = false
        
        TriggerServerCallback('azakit_startnpc:itemTaken3', function(cb)
        hasItem = cb
        
        end)
        Wait(1000)
    end
    if hasItem then
        onjob = true
        TriggerEvent(EVENT3)
    else
        lib.notify({
            position = 'top',
            title = _("noitem_3"),
            type = 'error'
          })
    end
end)