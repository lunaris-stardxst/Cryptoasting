----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
	key = "tags",
	path = "atlas_tags.png",
	px = 34,
	py = 34
}

SMODS.Tag {
	key = "common_tag",
	atlas = "crp_tags",
	pos = { x = 0, y = 0 },
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == 1 and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS[1] > rares_in_posession[1] then
				card = create_card('Joker', _context.area, nil, 0.8, nil, nil, nil, 'uta')
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.Common, function()
					card:start_materialize()
					card.misprint_cost_fac = 0
					card:set_cost()
					return true
				end)
			else
				tag:nope()
			end
			tag.triggered = true
			return card
		end
	end,
}

SMODS.Tag {
	key = "legendary_tag",
	atlas = "crp_tags",
	pos = { x = 1, y = 0 },
	min_ante = 3,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == 4 and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS[4] > rares_in_posession[1] then
				card = create_card("Joker", context.area, true, 4, nil, nil, nil, "uta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.Legendary, function()
					card:start_materialize()
					card.misprint_cost_fac = 1
					card:set_cost()
					return true
				end)
			else
				tag:nope()
			end
			tag.triggered = true
			return card
		end
	end,
}

SMODS.Tag {
	key = "exotic_tag",
	atlas = "crp_tags",
	pos = { x = 2, y = 0 },
	min_ante = 4,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == "cry_exotic" and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS.cry_exotic > rares_in_posession[1] then
				card = create_card("Joker", context.area, nil, "cry_exotic", nil, nil, nil, "cry_eta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.cry_exotic, function()
					card:start_materialize()
					card.misprint_cost_fac = 2
					card:set_cost()
					return true
				end)
			else
				tag:nope()
			end
			tag.triggered = true
			return card
		end
	end,
}
