RegisterServerCallback('azakit_startnpc:itemTaken',function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(ITEM)
    --local item2 = xPlayer.getInventoryItem(ITEM2)
    if REMOVE_ITEM then
        if item.count >= ITEM_AMOUNT then
        xPlayer.removeInventoryItem(ITEM, ITEM_AMOUNT)  -- item, amount
       -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
        else
        cb(false)
        end
    else
        if item.count >= ITEM_AMOUNT then
        --xPlayer.removeInventoryItem(ITEM, ITEM_AMOUNT)  -- item, amount
       -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
        else
        cb(false)
        end
    end
end)


RegisterServerCallback('azakit_startnpc:itemTaken2',function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(ITEM2)    
    --local item2 = xPlayer.getInventoryItem(ITEM3)
    if REMOVE_ITEM2 then
        if item.count >= ITEM_AMOUNT2 then
        xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)
        -- xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)  -- item, amount
        cb(true)
        else
        cb(false)
        end
    else        
        if item.count >= ITEM_AMOUNT2 then
           -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)
            -- xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)  -- item, amount
            cb(true)
            else
            cb(false)
        end
    end
end)

RegisterServerCallback('azakit_startnpc:itemTaken3',function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(ITEM3)
    --local item2 = xPlayer.getInventoryItem(ITEM2)
    if REMOVE_ITEM3 then
        if item.count >= ITEM_AMOUNT3 then
        xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)
        -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
         else
        cb(false)
         end
    else
        if item.count >= ITEM_AMOUNT3 then
       -- xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)
        -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
         else
        cb(false)
         end
    end        
end)
