SMODS.Shader {
	key = "overloaded",
	path = "overloaded.fs",
}

SMODS.Sound {
	key = "e_overloaded",
	path = "e_overloaded.ogg",
}

SMODS.Edition {
	key = "overloaded",
	weight = 0.03,
	shader = "overloaded",
	sound = {
        sound = "crp_e_overloaded",
        per = 1,
        vol = 0.5,
    },
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

SMODS.Shader {
	key = "fourdimensional",
	path = "fourdimensional.fs",
}

SMODS.Sound {
	key = "e_fourdimensionl",
	path = "e_fourdimensional.ogg",
}

SMODS.Edition {
    crp_credits = {
        idea = { "Glitchkat10" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" },
	},
	disable_base_shader = true,
	disable_shadow = true,
    key = "fourdimensional",
    weight = 0.2,
    shader = "fourdimensional",
    in_shop = true,
    extra_cost = 5,
    sound = {
        sound = "crp_e_fourdimensional",
        per = 1,
        vol = 0.5,
    },
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    config = { retrigger_chance = 4, retriggers = 24 },
    loc_vars = function(self, info_queue, center)
        local chance = center and center.edition and center.edition.retrigger_chance or self.config.retrigger_chance
        local retriggers = center and center.edition and center.edition.retriggers or self.config.retriggers

        return { vars = { G.GAME.probabilities.normal, chance, retriggers } }
    end,
    calculate = function(self, card, context)
        if
            context.other_card == card
            and (
                (context.repetition and context.cardarea == G.play)
                or (context.retrigger_joker_check and not context.retrigger_joker)
            )
        then
            local should_retrigger = pseudorandom("crp_fourdimensional") <= G.GAME.probabilities.normal / self.config.retrigger_chance
            return {
                message = localize("k_again_ex"),
                repetitions = should_retrigger and self.config.retriggers or 0,
                card = card,
            }
        end
    end,
}

--[[ SMODS.Shader {
	key = "psychic",
	path = "psychic.fs",
}

SMODS.Edition {
    crp_credits = {
        idea = { "Glitchkat10" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" },
	},
    key = "psychic",
    weight = 0.2,
    shader = "psychic",
    in_shop = true,
    extra_cost = 5,
    get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    config = { extra = { arrows = 1, mantissa = 7, increase = 1, amount = 7 }, immutable = { max = 10000 } },
    loc_vars = function(self, info_queue, center)
        return { vars = { "{", self.config.extra.arrows, "}", self.config.extra.mantissa, self.config.extra.increase, self.config.extra.amount } }
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
			return {
				hypermult_mod = {
					math.round(lenient_bignum(math.min(self.config.extra.arrows, self.config.immutable.max))),
					lenient_bignum(self.config.extra.mantissa)
				},
				message = "{" .. lenient_bignum(math.min(self.config.extra.arrows, card.ability.immutable.max)) .. "}" .. lenient_bignum(self.config.extra.mantissa) .. ' Mult',
				colour = G.C.EDITION,
			}
		end
		if context.joker_main then
			card.config.trigger = true -- context.edition triggers twice, this makes it only trigger once (only for jokers)
		end
		if context.after then
			card.config.trigger = nil
		end
	end,
} ]]--