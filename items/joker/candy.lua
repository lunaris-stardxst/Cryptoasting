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
	key = "bulgoe_candy",
	name = "Bulgoe Candy",
	config = { extra = { jokers = 2, money = 7 } },
	rarity = "cry_candy",
	atlas = "crp_placeholder",
	pos = { x = 98, y = 27 }, -- doesn't exist yet
	cost = 3,
	blueprint_compat = true,
	demicoloncompat = true,
	eternal_compat = false,
	pools = { Bulgoe = true, Food = true },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.jokers, card.ability.extra.money } }
	end,
	calculate = function(self, card, context)
		if context.selling_self or context.forcetrigger then
			for i = 1, card.ability.extra.jokers do
				SMODS.add_card({ set = "Bulgoe" })
			end
			ease_dollars(card.ability.extra.money)
		end
	end,
	crp_credits =  {
		idea = { "wilfredlam0418" },
		code = { "wilfredlm0418" }
	}
}
