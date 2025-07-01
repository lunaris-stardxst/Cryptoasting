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
	key = "normalis", -- hd bulgoe :fire:
	name = "Normalis",
	config = { extra = { Echips = 2.7, Emult = 2.7 } },
	rarity = "cry_exotic",
	atlas =  "crp_joker",
	blueprint_compat = true,
	demicoloncompat = true,
	pos = { x = 1, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 3, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.Echips), } }
	end,
	calculate = function(self, card, context)
		if (context.joker_main) or context.forcetrigger then
			return {
				Echip_mod = lenient_bignum(card.ability.extra.Echips),
				Emult_mod = lenient_bignum(card.ability.extra.Emult),
				message = "^" .. lenient_bignum(card.ability.extra.echipsmult) .. " Chips & Mult",
				colour = G.C.DARK_EDITION
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		art = { "Tatteredlurker" },
		code = { "Glitchkat10" }
	}
}

SMODS.Atlas {
	key = "timmy",
	path = "timmy.png",
	px = 71,
	py = 95
}

SMODS.Joker {
    key = "tetration_timmy",
	name = "tetration timmy",
    config = { extra = { EEmult = 1.1 } },
    rarity = "cry_exotic",
    atlas = "timmy",
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 7, extra = { x = 0, y = 7 } },
    cost = 50,
    blueprint_compat = true,
    demicoloncompat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { lenient_bignum(card.ability.extra.EEmult) } }
    end,
    calculate = function(self, card, context)
        if (context.joker_main) or context.forcetrigger then
            return {
                message = "^^" .. lenient_bignum(card.ability.extra.EEmult) .. " Mult",
                EEmult_mod = lenient_bignum(card.ability.extra.EEmult),
                colour = G.C.DARK_EDITION,
                card = card
            }
        end
    end,
    animation = {
        macro = {
        type = "skim",
        pos = {
            include = {{x1=0,x2=3,y1=0,y2=6}},
            exclude = {{x1=0,x2=3,y1=7,y2=7}},
        },
        }
    },
    crp_credits = {
        idea = { "Poker The Poker","Glitchkat10" },
        art = { "MarioFan597" },
        code = { "Glitchkat10" }
    }
}

SMODS.Joker {
	key = "perdurantes",
	name = "Perdurantes",
	config = { extra = { Emult = 1, Emult_mod = 1, retrigger_requirement = 50, current_retriggers = 0 } },
	rarity = "cry_exotic",
	atlas = "crp_placeholder",
	pos = { x = 7, y = 0 },
	cost = 50,
	blueprint_compat = true,
	demicoloncompat = true,
	perishable_compat = false,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.Emult), lenient_bignum(card.ability.extra.Emult_mod), lenient_bignum(card.ability.extra.retrigger_requirement), lenient_bignum(card.ability.extra.current_retriggers) } }
	end,
	calculate = function(self, card, context)
		if (context.joker_main) or context.forcetrigger then
			if card.ability.extra.current_retriggers >= card.ability.extra.retrigger_requirement - 1 then
				card.ability.extra.current_retriggers = 0
				card.ability.extra.Emult = card.ability.extra.Emult + card.ability.extra.Emult_mod
				return {
					message = "^" .. lenient_bignum(card.ability.extra.Emult) .. " Mult",
					Emult_mod = lenient_bignum(card.ability.extra.Emult),
					colour = G.C.DARK_EDITION,
					card = card
				}
			else
				card.ability.extra.current_retriggers = card.ability.extra.current_retriggers + 1
				return {
					message = "^" .. lenient_bignum(card.ability.extra.Emult) .. " Mult",
					Emult_mod = lenient_bignum(card.ability.extra.Emult),
					colour = G.C.DARK_EDITION,
					card = card
				}
			end
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker" },
		code = { "Rainstar" }
	}
}

SMODS.Joker {
	key = "jolly_of_joker",
	name = "The Jolly of Joker",
	config = { extra = { Emult = 8 } },
	rarity = "cry_exotic",
	atlas = "crp_joker",
	pos = { x = 1, y = 5 },
	soul_pos = { x = 2, y = 5, extra = { x = 3, y = 5 } },
	cost = 50,
	blueprint_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(card.ability.extra.Emult) } }
	end,
	calculate = function(self, card, context)
		if (context.joker_main and context.scoring_name == "Pair") or context.forcetrigger then
			return {
				message = localize({
					type = "variable",
					key = "a_powmult",
					vars = {
						number_format(lenient_bignum(card.ability.extra.Emult)),
					},
				}),
				Emult_mod = lenient_bignum(card.ability.extra.Emult),
				colour = G.C.DARK_EDITION,
			}
		end
	end,
	crp_credits = {
		idea = { "Unknown" },
		art = { "Tatteredlurker" },
		code = { "Rainstar" }
	}
}

SMODS.Joker {
	key = "victoriam",
	name = "Victoriam",
	config = { extra = { Emult_mod = 0.1 } },
	rarity = "cry_exotic",
	atlas = "crp_placeholders",
	pos = { x = 7, y = 0 },
	cost = 50,
	blueprint_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { lenient_bignum(1 + G.PROFILES[G.SETTINGS.profile].career_stats.c_wins * card.ability.extra.Emult_mod) } }
	end,
	calculate = function(self, card, context)
		if context.joker_main or context.forcetrigger then
			return {
				message = "^" .. lenient_bignum( 1 + G.PROFILES[G.SETTINGS.profile].career_stats.c_wins * card.ability.extra.Emult_mod ) .. " Mult",
				Emult_mod = lenient_bignum( 1 + G.PROFILES[G.SETTINGS.profile].career_stats.c_wins * card.ability.extra.Emult_mod ),
				colour = G.C.DARK_EDITION,
				card = card
			}
		end
	end,
	crp_credits = {
		idea = { "Poker The Poker", "Glitchkat10" },
		code = { "wilfredlam0418" }
	}
}

SMODS.Joker {
	key = "splittum",
	name = "Splittum",
	rarity = "cry_exotic",
	atlas = "crp_placeholders", -- to do: add the sprite (can be found on the cid)
	pos = { x = 7, y = 0 },
	cost = 50,
	blueprint_compat = false,
	demicoloncompat = false,
	calculate = function(self, card, context)
		if context.selling_card then
			local last_rarity = {
				crp_abysmal = nil,
				cry_cursed = nil,
				crp_trash = nil,
				["crp_:3"] = nil,
				crp_weak = nil,
				[1] = nil,
				crp_common2 = nil,
				crp_2common4me = "Common",
				[2] = "Common",
				crp_uncommon2 = "crp_common2",
				crp_unrare = "Uncommon",
				[3] = "Uncommon",
				crp_rare2 = "crp_uncommon2",
				cry_candy = "Rare",
				crp_meat = "crp_rare2",
				crp_joker = "Rare",
				crp_m = "Rare",
				cry_epic = "Rare",
				crp_cipe = "crp_rare2",
				crp_incredible = "cry_epic",
				crp_extraordinary = "crp_cipe",
				[4] = "cry_epic",
				crp_awesome = "crp_cipe",
				cry_exotic = "Legendary",
				crp_exotic2 = "crp_awesome",
				crp_mythic = "crp_exotic",
				crp_exomythic = "crp_mythic",
				crp_2exomythic4me = "crp_mythic",
				crp_22exomythic4mecipe = "crp_2exomythic4me",
				crp_exomythicawesomeuncommon2mexotic22exomythic4mecipe = "crp_22exomythic4mecipe",
				crp_supa_rare = "crp_exomythicawesomeuncommon2mexotic22exomythic4mecipe",
				crp_all = "crp_exomythicawesomeuncommon2mexotic22exomythic4mecipe",
			}
			if last_rarity[context.card.config.center.rarity] then
				for i = 1, 2 do
					SMODS.add_card({
						set = "Joker",
						rarity = last_rarity[context.card.config.center.rarity],
						key_append = "crp_splittum",
					})
				end
			end
		end
	end,
	crp_credits = {
		idea = { "PurplePickle" },
		code = { "wilfredlam0418" }
	}
}
