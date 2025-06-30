SMODS.Booster{
    key = 'very_rare_pack',
    atlas = 'placeholders', 
    pos = { x = 0, y = 0 },
    discovered = true,
    draw_hand = false,
    config = {
        choose = 1,
        extra = 3
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    weight = 0.1,
    cost = 50,
    create_card = function(self, card, i)
        local cards = {
            { key = 'c_blackhole', weight = 10 },
            { key = 'c_cry_gateway', weight = 10 },
            { key = 'c_cry_white_hole', weight = 10 },
            { key = 'c_cry_pointer', weight = 10 },
            { key = 'c_crp_prayer', weight = 10 },
            { key = 'c_crp_gate_of_prayers', weight = 10 },
            { key = 'c_crp_stairway_to_heaven', weight = 10 },
            { key = 'c_crp_path_of_solstice', weight = 10 },
            { key = 'c_crp_reckoning', weight = 10 },
            { key = 'c_crp_all_or_nothing', weight = 10 },
            { key = 'c_soul', weight = 20 } -- Default case gets higher weight
        }
        
        local total_weight = 0
        for _, card_data in ipairs(cards) do
            total_weight = total_weight + card_data.weight
        end
        
        local roll = pseudorandom("very_rare_pack") * total_weight
        local current_weight = 0
        
        for _, card_data in ipairs(cards) do
            current_weight = current_weight + card_data.weight
            if roll <= current_weight then
                return create_card('Spectral', G.pack_cards, nil, nil, true, nil, card_data.key, 'very_rare')
            end
        end
        
        -- Fallback (should never reach here)
        return create_card('Spectral', G.pack_cards, nil, nil, true, nil, 'c_soul', 'very_rare')
    end,
    select_card = 'consumeables',
    in_pool = function() return true end
}


SMODS.Booster{
    key = 'very_balanced_pack',
    atlas = 'placeholders', 
    pos = { x = 0, y = 0 },
    discovered = true,
    draw_hand = false,
    config = {
        choose = 1,
        extra = 5
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    weight = 1 / 9827,
    cost = 0.69,
    create_card = function(self, card, i)
         return create_card('Joker', G.pack_cards, nil, 'crp_exomythic', true, nil, nil, 'totally_balanced')
    end,
    select_card = 'jokers',
    in_pool = function() return true end
}