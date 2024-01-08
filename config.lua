LANGUAGE = 'en'

Webhook = "https://discord.com/api/webhooks/1193944718019670168/Dp8XKt9UPm61XYBBMkjgIj3x3v5xA4cNq55sAFIYY3ojWa5lh-gnTckMi8sBTYdPVKah"

--NPC 1
ITEM = "water"  -- required item to start
ITEM_AMOUNT = 1  -- amount of item required / no item check ITEM_AMOUNT = 0 
REMOVE_ITEM = true -- if true delete item
EVENT = 'lockpick:client:openLockpick'

START_NPC = {
    ped = {
        model = "s_m_m_highsec_01",
        coords = vector3(1140.7675, -3270.9485, 4.8997),
        heading = 271.7291
    }
}

--NPC 2
ITEM2 = "water"  -- required item to start
ITEM_AMOUNT2 = 1  -- amount of item required / no item check ITEM_AMOUNT = 0 
REMOVE_ITEM2 = false -- if true delete item
EVENT2 = 'lockpick:client:openLockpick'

START_NPC2 = {
    ped = {
        model = "s_m_m_highsec_01",
        coords = vector3(1140.9539, -3274.1333, 4.8997),
        heading = 271.7291
    }
}

--NPC 3
ITEM3 = "water"  -- required item to start
ITEM_AMOUNT3 = 0  -- amount of item required / no item check ITEM_AMOUNT = 0 
REMOVE_ITEM3 = false -- if true delete item
EVENT3 = 'lockpick:client:openLockpick'

START_NPC3 = {
    ped = {
        model = "s_m_m_highsec_01",
        coords = vector3(1140.9935, -3276.9541, 4.9008),
        heading = 271.7291
    }
}
