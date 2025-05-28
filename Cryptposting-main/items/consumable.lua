SMODS.Atlas {
	key = "consumables",
	path = "atlas_consumables.png",
	px = 71,
	py = 95
}

SMODS.Consumable {
	key = "prayer",
	set = "Spectral",
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 }},
	cost = 15,
	unlocked = true,
	discovered = true,
	atlas = 'crp_consumables',
	hidden = true,
	can_use = function(self, card)
		return #Cryptid.advanced_find_joker(nil, nil, nil, { "absolute" }, true, "j") < G.jokers.config.card_limit
	end,
	use = function(self, card, area, copier)
		local deletable_jokers = {}
		for k, v in pairs(G.jokers.cards) do
			if not v.ability.cry_absolute then
				deletable_jokers[#deletable_jokers + 1] = v
			end
		end
		local _first_dissolve = nil
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.75,
			func = function()
				for k, v in pairs(deletable_jokers) do
					v:start_dissolve(nil, _first_dissolve)
					_first_dissolve = true
				end
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.4,
			func = function()
				play_sound("timpani")
				local card = create_card("Joker", G.jokers, nil, "crp_mythic", nil, nil, nil, "crp_prayer")
				card:add_to_deck()
				G.jokers:emplace(card)
				card:juice_up(0.3, 0.5)
				return true
			end,
		}))
		delay(0.6)
    end,
	crp_credits = {
		idea = { "Unknown" },
		custom = { key = "placeholder", text = "MarioFan597" },
		code = { "Glitchkat10" }
	}
}

SMODS.Consumable {
	key = "gate_of_prayers",
	set = "Spectral",
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 }},
	cost = 30,
	unlocked = true,
	discovered = true,
	atlas = 'crp_consumables',
	hidden = true,
	can_use = function(self, card)
		return true
	end,
	use = function(self, card, area, copier)
		local deletable_jokers = {}
		for k, v in pairs(G.jokers.cards) do
			deletable_jokers[#deletable_jokers + 1] = v
		end
		local _first_dissolve = nil
		G.E_MANAGER:add_event(Event({
			trigger = "before",
			delay = 0.75,
			func = function()
				for k, v in pairs(deletable_jokers) do
					v:start_dissolve(nil, _first_dissolve)
					_first_dissolve = true
				end
				return true
			end,
		}))
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.4,
			func = function()
				play_sound("timpani")
				local card = create_card("Joker", G.jokers, nil, "crp_exomythic", nil, nil, nil, "crp_gate_of_prayers")
				card:add_to_deck()
				G.jokers:emplace(card)
				card:juice_up(0.3, 0.5)
				return true
			end,
		}))
		delay(0.6)
    end,
	crp_credits = {
		idea = { "Unknown" },
		custom = { key = "placeholder", text = "MarioFan597" },
		code = { "Glitchkat10" }
	}
}