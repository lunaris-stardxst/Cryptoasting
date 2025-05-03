----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
	key = "jokers",
	path = "atlas_jokers.png",
	px = 71,
	py = 95
}

SMODS.Sound {
	key = "pop",
	path = "pop.ogg",
	loop = false,
	volume = 0.5,
}

SMODS.Joker {
	key = "bulgoe",
	config = { extra = { a_chips = 2.7 } },
	rarity = 1,
	atlas =  "crp_jokers",
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	cost = 1,
	blueprint_compat = true,
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
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Poker The Poker" },
		code = { "Glitchkat10" },
		custom = { key = "everything",text = "Bulgoe" }
	}
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
	blueprint_compat = true,
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
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "sprinter",
	config = { extra = { a_chips = 0, a_chips_mod = 75 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 4, y = 0 },
	cost = 5,
	blueprint_compat = true,
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
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "jogger",
	config = { extra = { a_chips = 0, a_chips_mod = 5 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 5, y = 0 },
	cost = 5,
	blueprint_compat = true,
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
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "tetration_timmy",
	config = { extra = { ee_mult = 1.1 } },
	rarity = "cry_exotic",
	atlas = "crp_jokers",
	pos = { x = 2, y = 3 },
	soul_pos = { x = 3, y = 3, extra = { x = 4, y = 3 } },
	cost = 50,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.ee_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				ee_mult = card.ability.extra.ee_mult,
			}
		end
	end,
	crp_credits = {
		idea = { "poker the poker","Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "dead_joker",
	config = { extra = {  } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 6, y = 0 },
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				mult = 107
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_of_all_trades",
	config = { extra = { a_chips = 150, a_mult = 15, a_dollars = 5 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 3, y = 1 },
	cost = 9,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips, card.ability.extra.a_mult, card.ability.extra.a_dollars } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				chips = card.ability.extra.a_chips,
				mult = card.ability.extra.a_mult
			}
		end
	end,
	calc_dollar_bonus = function(self, card)
		return card.ability.extra.a_dollars
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_2",
	config = { extra = { a_chips = 4 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 7, y = 0 },
	cost = 1,
	blueprint_compat = true,
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
	crp_credits = {
		idea = { "N/A" },
		art = { "Poker The Poker","Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_2_5",
	config = { extra = { a_chips = 40 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 8, y = 2 },
	cost = 1,
	blueprint_compat = true,
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
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_3",
	config = { extra = { x_mult = 4 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 8, y = 0 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				x_mult = card.ability.extra.x_mult
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_4",
	config = { extra = { e_mult = 4 } },
	rarity = "cry_exotic",
	atlas = "crp_jokers",
	pos = { x = 0, y = 1 },
	soul_pos = { x = 1, y = 1, extra = { x = 2, y = 1 } },
	cost = 50,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.e_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				message = localize({
					type = "variable",
					key = "a_powmult",
					vars = {
						number_format(card.ability.extra.e_mult),
					},
				}),
				Emult_mod = card.ability.extra.e_mult,
				colour = G.C.DARK_EDITION,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_5",
	config = { extra = { ee_mult = 4 } },
	rarity = "crp_mythic",
	atlas = "crp_jokers",
	pos = { x = 1, y = 2 },
	soul_pos = { x = 2, y = 2, extra = { x = 3, y = 2 } },
	cost = 100,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.ee_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				ee_mult = card.ability.extra.ee_mult,
				
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_6",
	config = { extra = { a_dollars = 4 } },
	rarity = 2,
	atlas = "crp_jokers",
	pos = { x = 6, y = 1 },
	cost = 8,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_dollars } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			ease_dollars(card.ability.extra.a_dollars)
			return { message = "$" .. number_format(card.ability.extra.a_dollars), colour = G.C.MONEY }
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "joker_8",
	config = { extra = { x_chips = 4 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 0, y = 3 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				x_chips = card.ability.extra.x_chips
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "playerrkillerr",
	config = { extra = {  } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 4, y = 1 },
	cost = 434,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.c_black_hole
		info_queue[#info_queue + 1] = G.P_CENTERS.j_cry_googol_play
		info_queue[#info_queue + 1] = G.P_CENTERS.p_arcana_normal_1
		info_queue[#info_queue + 1] = G.P_CENTERS.p_celestial_normal_1
		info_queue[#info_queue + 1] = G.P_CENTERS.p_spectral_normal_1
		return { vars = { card.ability.extra.a_mult, '{', '}' } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				mult = 284
			}
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "millipede",
	config = { extra = { a_chips = 1000 } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 5, y = 1 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "pi_joker",
	config = { extra = {  } },
	rarity = 3,
	atlas = "crp_jokers",
	pos = { x = 1, y = 3 },
	cost = 10,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_chips, card.ability.extra.x_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				x_chips = 3.14159265358979323846264338327950,
				x_mult = 3.14159265358979323846264338327950,
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = ":3",
	rarity = "crp_:3",
	atlas = "crp_jokers",
	pos = { x = 6, y = 3 },
	cost = 0,
	blueprint_compat = false,
	crp_credits = {
		idea = { "lord.ruby" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" },
		custom = { key = "colon_3",text = "why are you here; this joker literally does nothing" }
	}
}

SMODS.Joker {
	key = "water_bottle",
	config =
		{ extra = { splash = 5 } },
		{ immutable = { max_spawn = 100 } }, -- idk how to fix it lol
	rarity = 2,
	atlas = "crp_jokers",
	pos = { x = 1, y = 4 },
	cost = 7,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.splash } }
	end,
	calculate = function(self, card, context)
		if context.selling_self then
			for i = 1, math.floor(card.ability.extra.splash) do
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_splash")
				card:add_to_deck()
				G.jokers:emplace(card)
			end
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "big_joker",
	config = { extra = { a_mult = 15 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 7, y = 2 },
	display_size = { w = 2 * 71, h = 2 * 95 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				mult = card.ability.extra.a_mult
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "purist_jolly_joker",
	config = { extra = { a_mult = 15 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 5, y = 3 },
	cost = 4,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_mult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and context.scoring_name == "Pair" then
			return {
				mult = card.ability.extra.a_mult
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "chip",
	config = { extra = {  } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 0, y = 4 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				chips = 1
			}
		end
	end,
	crp_credits = {
		idea = { "N/A" },
		art = { "Lexi","Glitchkat10" },
		code = { "Lexi" }
	}
}

SMODS.Joker {
	key = "centipede",
	config = { extra = { a_chips = 100 } },
	rarity = 2,
	atlas = "crp_jokers",
	pos = { x = 7, y = 3 },
	cost = 6,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "decipede",
	config = { extra = { a_chips = 10 } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 8, y = 3 },
	cost = 1,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.a_chips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if #context.full_hand == 1 then
				return {
					chips = card.ability.extra.a_chips
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "semicolon",
	config = { extra = {  } },
	rarity = 1,
	atlas = "crp_jokers",
	pos = { x = 1, y = 4 },
	cost = 2,
	blueprint_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			card_eval_status_text(card, "extra", nil, nil, nil, { message = "plz", colour = { 0.8, 0.45, 0.85, 1 }, delay = 10 } )
			return {
				message = "Nope!",
				delay = 0.3,  -- 0.3 second delay (adjust as needed)
				colour = G.C.PURPLE,
				card = card
			}
		end
		return nil
	end,
	crp_credits = {
		idea = { "lord.ruby" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}
----------------------------------------------
------------MOD CODE END----------------------
