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
				card = create_card('Joker', context.area, nil, 0, nil, nil, nil, 'uta')
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
	crp_credits = {
		idea = { "Unknown" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
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
	crp_credits = {
		idea = { "Unknown" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
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
	crp_credits = {
		idea = { "Unknown" },
		art = { "Glitchkat10" },
		code = { "Glitchkat10" }
	}
}

SMODS.Tag {
	key = "better_better_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 0, y = 1 },
	config = { extra = { amount = 2 } },
	min_ante = 3,
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = 1
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = "better_better_better_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 1, y = 1 },
	min_ante = 4,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "cry_epic"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = "better_better_better_better_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 2, y = 1 },
	min_ante = 5,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							legendary = true
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = "better_better_better_better_better_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 3, y = 1 },
	min_ante = 6,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "cry_exotic"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
    key = "better_better_better_better_better_better_top-up_tag",
    atlas = "crp_tags",
    pos = { x = 5, y = 1 },
	min_ante = 7,
    config = { extra = { amount = 2 } },
    loc_vars = function(self, info_queue, tag)
        return { vars = { tag.config.extra.amount } }
    end,
    apply = function(self, tag, context)
        if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
        					set = "Joker",
        					rarity = "crp_mythic"
    					}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
    end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = "better_better_better_better_better_better_better_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 2, y = 2 },
	min_ante = 8,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "crp_exomythic"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = ":3_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 0, y = 3 },
	min_ante = 1,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "crp_:3"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "Glitchkat10" }
	}
}

SMODS.Tag {
	key = "candy_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 4, y = 1 },
	min_ante = 2,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "cry_candy"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	}
}

SMODS.Tag {
	key = "top-down_tag",
	atlas = "crp_tags",
	pos = { x = 7, y = 2 },
	min_ante = -2,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "cry_cursed"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Glitchkat10" },
		art = { "aqlr" },
		code = { "Glitchkat10" }
	}
}

SMODS.Tag {
	key = "trash_top-up_tag",
	atlas = "crp_tags",
	pos = { x = 1, y = 3 },
	min_ante = 0,
	config = { extra = { amount = 2 } },
	loc_vars = function(self, info_queue, tag)
		return { vars = { tag.config.extra.amount } }
	end,
	apply = function(self, tag, context)
		if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
							set = "Joker",
							rarity = "crp_trash"
						}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Glitchkat10" },
		code = { "ScarredOut" }
	}
}
--[[
SMODS.Tag {
    key = "worsex2topuptag",
    atlas = "crp_tags",
    pos = {
        x = 5,
        y = 2
    },
    config = {
        extra = {
            amount = 2
        }
    },
    loc_txt = {
        name = "Worse Worse Top-down Tag",
        text = {
            "Create up to #1#",
            "{C:crp_abysmal}Abysmal{} {C:attention}Jokers{}",
            "{C:inactive}(Must have room){}"
        }
    },
    loc_vars = function(self, info_queue, tag)
        return {
            vars = {
                tag.config.extra.amount
            }
        }
    end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	},
    apply = function(self, tag, context)
        if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
        					set = "Joker",
        					rarity = "crp_abysmal"
    					}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
    end
}
SMODS.Tag {
    key = "betterx9topuptag",
    atlas = "crp_tags",
    pos = {
        x = 0,
        y = 2
    },
    config = {
        extra = {
            amount = 2
        }
    },
    loc_txt = {
        name = "Better Better Better Better Better Better Better Better Better Top-up Tag",
        text = {
            "Create up to #1#",
            "{C:crp_22exomythic4mecipe}22ExoMythic4meCipe{} {C:attention}Jokers{}",
            "{C:inactive}(Must have room){}"
        }
    },
    loc_vars = function(self, info_queue, tag)
        return {
            vars = {
                tag.config.extra.amount
            }
        }
    end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	},
    apply = function(self, tag, context)
        if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
        					set = "Joker",
        					rarity = "crp_22exomythic4mecipe"
    					}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
    end
}
SMODS.Tag {
    key = "betterx8topuptag",
    atlas = "crp_tags",
    pos = {
        x = 4,
        y = 2
    },
    config = {
        extra = {
            amount = 2
        }
    },
    loc_txt = {
        name = "Better Better Better Better Better Better Better Better Top-up Tag",
        text = {
            "Create up to #1#",
            "{C:crp_2exomythic4me}2ExoMythic4Me{} {C:attention}Jokers{}",
            "{C:inactive}(Must have room){}"
        }
    },
    loc_vars = function(self, info_queue, tag)
        return {
            vars = {
                tag.config.extra.amount
            }
        }
    end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	},
    apply = function(self, tag, context)
        if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
        					set = "Joker",
        					rarity = "crp_2exomythic4me"
    					}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
    end
}
SMODS.Tag {
    key = "besttopuptag",
    atlas = "crp_tags",
    pos = {
        x = 7,
        y = 1
    },
    config = {
        extra = {
            amount = 2
        }
    },
    loc_txt = {
        name = "Best Top-up Tag",
        text = {
            "Create up to #1#",
            "{C:crp_exomythicepicawesomeuncommon2mexotic22exomythic4mecipe}ExoMythicEpicAwesomeUncommon2MExotic22ExoMythic4meCipe{} {C:attention}Jokers{}",
            "{C:inactive}(Must have room){}"
        }
    },
    loc_vars = function(self, info_queue, tag)
        return {
            vars = {
                tag.config.extra.amount
            }
        }
    end,
	crp_credits = {
		idea = { "Grahkon" },
		art = { "Grahkon" },
		code = { "ScarredOut" }
	},
    apply = function(self, tag, context)
        if context.type == "immediate" then
			tag:yep("+", G.C.RED, function()
				for i = 1, tag.config.extra.amount do
					if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
						local hittable = {
        					set = "Joker",
        					rarity = "crp_exomythicepicawesomeuncommon2mexotic22exomythic4mecipe"
    					}
						SMODS.add_card(hittable)
					end
				end
				return true
			end)
			tag.triggered = true
			return true
		end
    end
}
]]-- op tag commentation ends here
--[[ SMODS.Tag {
	key = "uncommon_2_tag",
	atlas = "crp_tags",
	pos = { x = 3, y = 0 },
	min_ante = 0,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == "crp_uncommon_2" and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS.crp_uncommon_2 > rares_in_posession[1] then
				card = create_card("Joker", context.area, nil, "crp_uncommon_2", nil, nil, nil, "cry_eta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.Uncommon, function()
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
	crp_credits = {
		idea = { "Unknown" },
		art = { "lord.ruby" },
		code = { "lord.ruby" }
	}
}

SMODS.Tag {
	key = "rare_2_tag",
	atlas = "crp_tags",
	pos = { x = 4, y = 0 },
	min_ante = 0,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == "crp_rare_2" and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS.crp_rare_2 > rares_in_posession[1] then
				card = create_card("Joker", context.area, nil, "crp_rare_2", nil, nil, nil, "cry_eta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.Rare, function()
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
	crp_credits = {
		idea = { "Unknown" },
		art = { "lord.ruby"},
		code = { "lord.ruby" }
	}
}

 --[[ SMODS.Tag {
	key = "awesome_tag",
	atlas = "crp_tags",
	pos = { x = 5, y = 0 },
	min_ante = 0,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == "crp_awesome" and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS.crp_awesome > rares_in_posession[1] then
				card = create_card("Joker", context.area, nil, "crp_awesome", nil, nil, nil, "cry_eta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.crp_awesome, function()
					card:start_materialize()
					card.misprint_cost_fac = 0.5
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
	key = "m_tag",
	atlas = "crp_tags",
	pos = { x = 6, y = 0 },
	min_ante = 0,
	config = { type = "store_joker_create" },
	apply = function(self, tag, context)
		if context.type == "store_joker_create" then
			local rares_in_posession = { 0 }
			for k, v in ipairs(G.jokers.cards) do
				if v.config.center.rarity == "crp_m" and not rares_in_posession[v.config.center.key] then
					rares_in_posession[1] = rares_in_posession[1] + 1
					rares_in_posession[v.config.center.key] = true
				end
			end
			local card
			if #G.P_JOKER_RARITY_POOLS.crp_m > rares_in_posession[1] then
				card = create_card("Joker", context.area, nil, "crp_m", nil, nil, nil, "cry_eta")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RARITY.cry_exotic, function()
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
} ]]--
