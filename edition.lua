SMODS.Shader {
	key = "overloaded",
	path = "overloaded.fs",
}
SMODS.Edition {
	key = "overloaded",
	weight = 0.03,
	shader = "overloaded",
	in_shop = true,
	extra_cost = 0,
	get_weight = function(self)
		return G.GAME.edition_rate * self.weight
	end,
	config = { eee_chips = 1.03, eee_mult = 1.03, trigger = nil },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.eee_chips, self.config.eee_mult } }
	end,
	calculate = function(self, card, context)
		if
			(
				context.edition -- for when on jokers
				and context.cardarea == G.jokers -- checks if should trigger
				and card.config.trigger -- fixes double trigger
			) or (
				context.main_scoring -- for when on playing cards
				and context.cardarea == G.play
			)
		then
			return { eee_chips = self.config.eee_chips, eee_mult = self.config.eee_mult }
		end
		if context.joker_main then
			card.config.trigger = true -- context.edition triggers twice, this makes it only trigger once (only for jokers)
		end
		if context.after then
			card.config.trigger = nil
		end
	end,
    crp_credits = {
        idea = { "Glitchkat10", "Lexi" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" },
	},
}