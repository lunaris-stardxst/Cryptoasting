-- a file specificlaly to load all other lua files in the mod (and for config stuff)

local files = {
	"items/consumable",
	"items/deck",
	"items/edition",
	"items/joker",
	"items/rarity",
	"items/tag",
	"items/voucher",
	"items/challenge",
	"lib/https",
	"lib/cardanim",
	"lib/cardanim_macros/skim",
	"lib/modbadge",
	"lib/pointerblist",
}
for i, v in pairs(files) do
	assert(SMODS.load_file(v..".lua"))()
end

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
	-- recenter the title
	G.title_top.T.w = G.title_top.T.w * 1.7675
	G.title_top.T.x = G.title_top.T.x - 0.8
	G.title_top:emplace(newcard)
	-- make the card look the same way as the title screen Ace of Spades
	newcard.T.w = newcard.T.w * 1.1 * 1.2
	newcard.T.h = newcard.T.h * 1.1 * 1.2
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

G.FUNCS.hand_mult_UI_set = function(e)
    local new_mult_text = number_format(G.GAME.current_round.current_hand.mult)
    if new_mult_text ~= G.GAME.current_round.current_hand.mult_text then 
      G.GAME.current_round.current_hand.mult_text = new_mult_text
      e.config.object.scale = scale_number(G.GAME.current_round.current_hand.mult, 0.9, 1000)
      if string.len(new_mult_text) > 6 then
        e.config.object.scale = 0.9 / (string.len(new_mult_text)/6)
      end
      e.config.object:update_text()
      if not G.TAROT_INTERRUPT_PULSE then G.FUNCS.text_super_juice(e, math.max(0,math.floor(math.log10(type(G.GAME.current_round.current_hand.mult) == 'number' and G.GAME.current_round.current_hand.mult or 1)))) end
    end
  end

  function math.round(x)
	return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

local _occ = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	local _card = _occ(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	if _type == "Joker" and _card.ability.rarity== "crp_self-insert" then
		SMODS.Stickers["cry_absolute"]:apply(_card, true)
		print("skibidi hawk tuah big mac")
	end
	return _card
end