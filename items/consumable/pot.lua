SMODS.ConsumableType {
	key = "Pot",
	primary_colour = { 1, 1, 1, 1 },
	secondary_colour = { 0.75, 0.75, 0.75, 1 },
	collection_rows = { 4, 4 },
	shop_rate = 0,
	loc_txt = {},
	default = "c_crp_desires",
	can_stack = true,
	can_divide = true
}

-- Functions on shuffling cards back into the deck

function shuffle(card_pos)
	if (card_pos or 1) <= #G.hand.cards then
		local cards = {}
		for i, j in ipairs(G.hand.cards) do
			cards[i] = j
		end
		for i = 1, (card_pos or 1) - 1 do
			cards[i + 1] = G.hand.cards[i]
		end
		cards[1] = G.hand.cards[card_pos or 1]
		G.hand.cards = cards
		draw_card(G.hand, G.deck)
	end
end

function shuffle_random(amount, key_append)
	for _ = 1, amount or 1 do
		shuffle(math.ceil(pseudorandom(key_append or "") * #G.hand.cards))
	end
end

function shuffle_all_highlighted()
	for i, j in ipairs(G.hand.highlighted) do
		for i, k in ipairs(G.hand.cards) do
			if j == k then
				shuffle(i)
				break
			end
		end
	end
end

SMODS.Consumable {
	key = "desires",
	name = "Pot of Desires",
	set = "Pot",
	pos = { x = 10, y = 2 },
	config = { max_highlighted = 2 },
	atlas = "crp_placeholder",
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.max_highlighted) } }
	end,
	use = function()
		for i = 1, #G.hand.highlighted do
			G.hand.highlighted[i]:start_dissolve()
			G.hand.highlighted[i]:remove_from_deck()
		end
		SMODS.draw_cards(#G.hand.highlighted)
	end,
	crp_credits = {
		idea = { "Psychomaniac14" },
		code = { "wlfredlam0418" }
	}
}

SMODS.Consumable {
	key = "dichotomy",
	name = "Pot of Dichotomy",
	set = "Pot",
	pos = { x = 10, y = 2 },
	config = { immutable = { cards = 2 }, extra = { jokers = 1 } },
	atlas = "crp_placeholder",
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.immutable.cards), lenient_bignum(card.ability.extra.jokers) } }
	end,
	can_use = function(self, card)
		return #G.hand.highlighted >= card.ability.immutable.cards
	end,
	use = function(self, card)
		shuffle_random(2, "crp_dichotomy1")
		SMODS.add_card({ set = "Joker", key_append = "crp_dichotomy2" })
	end,
	crp_credits = {
		idea = { "Psychomaniac14" },
		code = { "wlfredlam0418" }
	}
}

SMODS.Consumable {
	key = "greed",
	name = "Pot of Greed",
	set = "Pot",
	pos = { x = 10, y = 2 },
	config = { extra = { cards = 3 } },
	atlas = "crp_placeholder",
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.cards) } }
	end,
	can_use = function()
		return true
	end,
	use = function(self, card)
		SMODS.draw_cards(card.ability.extra.cards)
	end,
	crp_credits = {
		idea = { "Psychomaniac14" },
		code = { "wlfredlam0418" }
	}
}

SMODS.Consumable {
	key = "gold",
	name = "Pot of Gold",
	set = "Pot",
	pos = { x = 10, y = 2 },
	config = { extra = { cards = 1 } },
	atlas = "crp_placeholder",
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.cards) } }
	end,
	can_use = function()
		return true
	end,
	use = function(self, card)
		for i = 1, card.ability.extra.cards do
			SMODS.add_card({ set = "Playing Card", enhancement = "m_gold" })
		end
	end,
	crp_credits = {
		idea = { "Psychomaniac14" },
		code = { "wlfredlam0418" }
	}
}

SMODS.Consumable {
	key = "potluck",
	name = "Potluck",
	set = "Pot",
	pos = { x = 10, y = 2 },
	config = { max_highlighted = 1, extra = { jokers = 1 } },
	atlas = "crp_placeholder",
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.max_highlighted), lenient_bignum(card.ability.extra.jokers) } }
	end,
	use = function(self, card)
		for i = 1, #G.hand.highlighted do
			G.hand.highlighted[i]:start_dissolve()
			G.hand.highlighted[i]:remove_from_deck()
		end
		for i = 1, card.ability.extra.jokers do
			SMODS.add_card({ set = "Food" })
		end
	end,
	crp_credits = {
		idea = { "Psychomaniac14" },
		code = { "wlfredlam0418" }
	}
}
