--- STEAMODDED HEADER
--- MOD_NAME: Consistent Joker Suit Colors
--- MOD_ID: ConsistentJokerColors
--- MOD_AUTHOR: [ywssp]
--- MOD_DESCRIPTION: Changes the colors of the suit-specific jokers based on the current suit colors.
--- PRIORITY: 1

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.ConsistentJokerColors()
    sendDebugMessage("Starting \"Consistent Joker Suit Colors\" Mod...")

    local joker_color_mod = SMODS.findModByID("ConsistentJokerColors")

    local isHighContrast = G.SETTINGS.colourblind_option

    local normalFilePath = 'Jokers.png'
    local highContrastFilePath = 'Jokers_HighContrast.png'

    local filePath = ''

    if (isHighContrast) then
        sendDebugMessage("High Contrast Setting Turned On, Using file: " .. highContrastFilePath)
        filePath = highContrastFilePath
    else
        sendDebugMessage("High Contrast Setting Turned Off, Using file: " .. normalFilePath)
        filePath = normalFilePath
    end

    local sprite_jokers = SMODS.Sprite:new('Joker', joker_color_mod.path, filePath, 71, 95, 'asset_atli')

    sprite_jokers:register()
end
----------------------------------------------
------------MOD CODE END----------------------