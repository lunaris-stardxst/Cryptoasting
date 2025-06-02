----------------------------------------------
------------MOD CODE -------------------------
SMODS.Challenge {
    key = "crp_cecilchallenge",
    loc_txt = {
        name = "Sea Salt",
    },
    rules = {
        modifiers = {
            {id = "dollars", value = -7360000000}
        }
    },
    consumeables = {
        {id = "c_judgement"},
        {id = "c_judgement"}
    }
}
SMODS.Challenge {
    key = "crp_marathon",
    loc_txt = {
        name = "Marathon",
    },
    rules = {
        modifiers = {
            {id = "joker_slots", value = -100},
            {id = "discards", value = 5},
        }
    },
    jokers = {
        {id = "j_crp_sprinter", eternal = true},
        {id = "j_cry_sync_catalyst", eternal = true}
    },
    deck = {
        type = "Challenge Deck",
        no_ranks = {
            {id = "A"},
            {id = "2"},
            {id = "3"},
        }
    }
}