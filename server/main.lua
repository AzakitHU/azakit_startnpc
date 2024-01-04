RegisterServerCallback('azakit_startnpc:itemTaken',function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(ITEM)
    --local item2 = xPlayer.getInventoryItem(ITEM2)
    if REMOVE_ITEM then
        if item.count >= ITEM_AMOUNT then
        xPlayer.removeInventoryItem(ITEM, ITEM_AMOUNT)  -- item, amount
       -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
        local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT.."."
                discordLog(message, Webhook)
        else
        cb(false)
        end
    else
        if item.count >= ITEM_AMOUNT then
        --xPlayer.removeInventoryItem(ITEM, ITEM_AMOUNT)  -- item, amount
       -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
        local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT.."."
                discordLog(message, Webhook)
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
        local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT2.."."
                discordLog(message, Webhook)
        else
        cb(false)
        end
    else        
        if item.count >= ITEM_AMOUNT2 then
           -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)
            -- xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)  -- item, amount
            cb(true)
            local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT2.."."
                    discordLog(message, Webhook)
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
        local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT3.."."
                discordLog(message, Webhook)
         else
        cb(false)
         end
    else
        if item.count >= ITEM_AMOUNT3 then
       -- xPlayer.removeInventoryItem(ITEM3, ITEM_AMOUNT3)
        -- xPlayer.removeInventoryItem(ITEM2, ITEM_AMOUNT2)  -- item, amount
        cb(true)
        local message = "**Steam:** " .. GetPlayerName(source) .. "\n**Identifier:** " .. xPlayer.identifier .. "\n**ID:** " .. source .. "\n**Log:** Start " ..EVENT3.."."
                discordLog(message, Webhook)
         else
        cb(false)
         end
    end        
end)


function discordLog(message, webhook)
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = 'AzakitBOT', embeds = {{["description"] = "".. message .."",["footer"] = {["text"] = "Azakit Development - https://discord.com/invite/DmsF6DbCJ9",["icon_url"] = "https://cdn.discordapp.com/attachments/1150477954430816456/1192512440215277688/azakitdevelopmentlogoavatar.png?ex=65a958c1&is=6596e3c1&hm=fc6638bef39209397047b55d8afbec6e8a5d4ca932d8b49aec74cb342e2910dc&",},}}, avatar_url = "https://cdn.discordapp.com/attachments/1150477954430816456/1192512440215277688/azakitdevelopmentlogoavatar.png?ex=65a958c1&is=6596e3c1&hm=fc6638bef39209397047b55d8afbec6e8a5d4ca932d8b49aec74cb342e2910dc&"}), { ['Content-Type'] = 'application/json' })
end
