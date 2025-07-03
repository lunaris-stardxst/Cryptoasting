local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
	local ret = oldfunc(change_context)
	-- adds bulgoe to the main menu
	local newcard = Card(
		G.title_top.T.x,
		G.title_top.T.y,
		G.CARD_W,
		G.CARD_H,
		G.P_CARDS.empty,
		G.P_CENTERS.j_crp_bulgoe,
		{ bypass_discovery_center = true }
	)
    newcard:set_edition("e_crp_overloaded")
	-- recenter the title
	G.title_top.T.w = G.title_top.T.w * 1.7675
	G.title_top.T.x = G.title_top.T.x - 0.8
	G.title_top:emplace(newcard)
	-- make the card look the same way as the title screen ace of spades
	newcard.T.w = newcard.T.w * 1.4
	newcard.T.h = newcard.T.h * 1.4
	newcard:set_sprites(newcard.config.center)
	newcard.no_ui = true
	newcard.states.visible = false
	G.E_MANAGER:add_event(Event({
		trigger = "after",
		delay = 0,
		blockable = false,
		blocking = false,
		func = function()
			if change_context == "splash" then
				newcard.states.visible = true
				newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, true, 2.5)
			else
				newcard.states.visible = true
				newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, nil, 1.2)
			end
			return true
		end,
	}))
	return ret
end

Cryptid.mod_whitelist["Cryptposting"] = true

SMODS.Atlas({
	key = "modicon",
	path = "crp_icon.png",
	px = 34,
	py = 34,
})