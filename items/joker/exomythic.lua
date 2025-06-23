SMODS.Atlas {
	key = "joker",
	path = "atlas_joker.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "placeholder",
	path = "atlas_placeholder.png",
	px = 71,
	py = 95
}

SMODS.Joker {
	key = "heptation_henry",
	name = "heptation henry",
	config = { immutable = { arrows = 7 }, extra = { hypermult = 1.1 } },
	rarity = "crp_exomythic",
	atlas = "crp_placeholder",
	pos = { x = 9, y = 0 },
	-- soul_pos = { x = 0, y = 0, extra = { x = 0, y = 0 } },
	cost = 200,
	blueprint_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.hypermult) } }
	end,
	calculate = function(self, card, context)
		if (context.joker_main) or context.forcetrigger then
			return {
				hypermult_mod = {
					lenient_bignum(card.ability.immutable.arrows),
					lenient_bignum(card.ability.extra.hypermult)
				},
				message = "^^^^^" .. lenient_bignum(card.ability.extra.hypermult) .. " Mult",
				colour = G.C.EDITION,
			}
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Joker {
	key = "morble",
	name = "Morble",
	config = { extra = { Emoney = 2 } },
	rarity = "crp_exomythic",
	atlas = "crp_placeholder",
	pos = { x = 9, y = 0 },
	-- soul_pos = { x = 0, y = 0, extra = { x = 0, y = 0 } },
	cost = 200,
	blueprint_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.Emoney) } }
	end,
	calculate = function(self, card, context)
		if (context.other_joker) or context.forcetrigger then
			G.GAME.dollars = G.GAME.dollars ^ lenient_bignum(card.ability.extra.Emoney)
			return {
				message = "^" .. lenient_bignum(card.ability.extra.Emoney) .. "$",
				colour = G.C.MONEY,
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Rainstar" }
	}
}

SMODS.Joker {
	key = "statically_charged",
	name = "Statically Charged",
	config = { extra = {  } },
	rarity = "crp_exomythic",
	atlas = "crp_joker",
	pos = { x = 1, y = 6 },
	soul_pos = { x = 2, y = 6, extra = { x = 3, y = 6 } },
	cost = 200,
	blueprint_compat = true,
	demicoloncompat = false,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_crp_overloaded
		return { vars = {  } }
	end,
	add_to_deck = function(self, card, from_debuff)
		if G.GAME.modifiers.cry_force_edition and not G.GAME.modifiers.cry_force_edition_from_deck then
			G.GAME.modifiers.cry_force_edition_from_deck = G.GAME.modifiers.cry_force_edition
		elseif not G.GAME.modifiers.cry_force_edition_from_deck then
			G.GAME.modifiers.cry_force_edition = "crp_overloaded"
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if G.GAME.modifiers.cry_force_edition_from_deck ~= "Nope!" then
			G.GAME.modifiers.cry_force_edition = G.GAME.modifiers.cry_force_edition_from_deck
		else
			G.GAME.modifiers.cry_force_edition = nil
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		art = { "Tatteredlurker" },
		code = { "Glitchkat10", "MathIsFun_" }
	}
}