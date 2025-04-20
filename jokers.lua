----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
	key = "jokers",
	path = "atlas_jokers.png",
	px = 71,
	py = 95
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

SMODS.Joker {
	key = "normalis",
	config = { extra = { e_chips = 2.7, e_mult = 2.7 } },
	rarity = "cry_exotic",
	atlas =  "crp_jokers",
	blueprint_compat = true,
	pos = { x = 1, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 3, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.e_chips, card.ability.extra.e_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				Echip_mod = card.ability.extra.e_chips,
				Emult_mod = card.ability.extra.e_mult,
				message = localize({
					type = "variable",
					key = "a_powmultchips",
					vars = { card.ability.extra.e_chips },
				}),
				colour = { 0.8, 0.45, 0.85, 1 },
			}
		end
	end,
}

SMODS.Joker {
	key = "sprinter",
	config = { extra = { a_chips = 0, a_chips_mod = 75 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 4, y = 0 },
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_chips_mod } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				chips = card.ability.extra.a_chips,
			}
		end
		if context.before and next(context.poker_hands['Straight Flush']) and not context.blueprint then
			card.ability.extra.a_chips = card.ability.extra.a_chips + card.ability.extra.a_chips_mod
			return {
				message = 'Upgraded!',
				colour = G.C.CHIPS,
				card = card
			}
		end
	end
}

SMODS.Joker {
	key = "jogger",
	config = { extra = { a_chips = 0, a_chips_mod = 5 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 5, y = 0 },
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_chips_mod } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				chips = card.ability.extra.a_chips,
			}
		end
		if context.before and next(context.poker_hands['High Card']) and not context.blueprint then
			card.ability.extra.a_chips = card.ability.extra.a_chips + card.ability.extra.a_chips_mod
			return {
				message = 'Upgraded!',
				colour = G.C.CHIPS,
				card = card
			}
		end
	end
}

----------------------------------------------
------------MOD CODE END----------------------
