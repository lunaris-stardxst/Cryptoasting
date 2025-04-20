----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
	key = "jokers",
	path = "atlas_jokers.png",
	px = 71,
	py = 71
}

SMODS.Joker {
	key = "bulgoe",
	config = { extra = { a_chips = 2.7 } },
	rarity = 1,
	atlas =  "crp_jokers",
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	cost = 1,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				chips = card.ability.extra.a_chips
			}
		end
	end,
}

----------------------------------------------
------------MOD CODE END----------------------
