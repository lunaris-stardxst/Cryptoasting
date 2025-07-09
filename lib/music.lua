SMODS.Sound({
    key = "music_all",
    path = "music_all.ogg",
    select_music_track = function()
        local count = #Cryptid.advanced_find_joker(nil, "crp_all", nil, nil, true)
        if count ~= 0 then
            return 1.7e308
        else
            return false
        end
    end,
})

-- hook into the music_exotic select_music_track function thing to add more of cryptposting's rarities
local original_select_music_track = SMODS.Sounds.cry_music_exotic.select_music_track
SMODS.Sounds.cry_music_exotic.select_music_track = function()
    return (original_select_music_track and original_select_music_track())
        or #Cryptid.advanced_find_joker(nil, "crp_exotic_2", nil, nil, true) ~= 0
        or #Cryptid.advanced_find_joker(nil, "crp_mythic", nil, nil, true) ~= 0
        or #Cryptid.advanced_find_joker(nil, "crp_exomythic", nil, nil, true) ~= 0
        or #Cryptid.advanced_find_joker(nil, "crp_2exomythic4me", nil, nil, true) ~= 0
        or #Cryptid.advanced_find_joker(nil, "crp_22exomythic4mecipe", nil, nil, true) ~= 0
        or #Cryptid.advanced_find_joker(nil, "crp_exomythicepicawesomeuncommon2mexotic22exomythic4mecipe", nil, nil, true) ~= 0
end