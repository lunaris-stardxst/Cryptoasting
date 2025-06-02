-- a file specificlaly to load all other lua files in the mod (and for config stuff)

local files = {
	"items/consumable",
	"items/deck",
	"items/edition",
	"items/joker",
	"items/rarity",
	"items/tag",
	"items/voucher",
	"items/challenge"
}
for i, v in pairs(files) do
	assert(SMODS.load_file(v..".lua"))()
end

local badge_gradient = SMODS.Gradient{
	key = "badge_gradient",
	colours = {
		HEX('00d1ff'),
		HEX('42c5e2')
	},
	cycle = 1
}

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

local smcmb = SMODS.create_mod_badges
function SMODS.create_mod_badges(obj, badges)
	smcmb(obj, badges)
	if not SMODS.config.no_mod_badges and obj and obj.crp_credits then
		local function calc_scale_fac(text)
			local size = 0.9
			local font = G.LANG.font
			local max_text_width = 2 - 2 * 0.05 - 4 * 0.03 * size - 2 * 0.03
			local calced_text_width = 0
			-- Math reproduced from DynaText:update_text
			for _, c in utf8.chars(text) do
				local tx = font.FONT:getWidth(c) * (0.33 * size) * G.TILESCALE * font.FONTSCALE
					+ 2.7 * 1 * G.TILESCALE * font.FONTSCALE
				calced_text_width = calced_text_width + tx / (G.TILESIZE * G.TILESCALE)
			end
			local scale_fac = calced_text_width > max_text_width and max_text_width / calced_text_width or 1
			return scale_fac
		end
		if obj.crp_credits.art or obj.crp_credits.code or obj.crp_credits.idea or obj.crp_credits.custom then
			local scale_fac = {}
			local min_scale_fac = 1
			local strings = { "Cryptposting" }
			for _, v in ipairs({ "idea", "art", "code" }) do
				if obj.crp_credits[v] then
					for i = 1, #obj.crp_credits[v] do
						strings[#strings + 1] =
							localize({ type = "variable", key = "cry_" .. v, vars = { obj.crp_credits[v][i] } })[1]
					end
				end
			end
			if obj.crp_credits.custom then
				strings[#strings + 1] = localize({ type="variable", key = obj.crp_credits.custom.key, vars = { obj.crp_credits.custom.text } })
			end
			for i = 1, #strings do
				scale_fac[i] = calc_scale_fac(strings[i])
				min_scale_fac = math.min(min_scale_fac, scale_fac[i])
			end
			local ct = {}
			for i = 1, #strings do
				ct[i] = {
					string = strings[i],
				}
			end
			local cry_badge = {
				n = G.UIT.R,
				config = { align = "cm" },
				nodes = {
					{
						n = G.UIT.R,
						config = {
							align = "cm",
							colour = badge_gradient,
							r = 0.1,
							minw = 2 / min_scale_fac,
							minh = 0.36,
							emboss = 0.05,
							padding = 0.03 * 0.9,
						},
						nodes = {
							{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
							{
								n = G.UIT.O,
								config = {
									object = DynaText({
										string = ct or "ERROR",
										colours = { obj.crp_credits and obj.crp_credits.text_colour or G.C.WHITE },
										silent = true,
										float = true,
										shadow = true,
										offset_y = -0.03,
										spacing = 1,
										scale = 0.33 * 0.9,
									}),
								},
							},
							{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
						},
					},
				},
			}
			local function eq_col(x, y)
				for i = 1, 4 do
					if x[i] ~= y[i] then
						return false
					end
				end
				return true
			end
			for i = 1, #badges do
				if eq_col(badges[i].nodes[1].config.colour, HEX("11badf")) then
					badges[i].nodes[1].nodes[2].config.object:remove()
					badges[i] = cry_badge
					break
				end
			end
		end
	end
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

Cryptid.pointerblistifytype("rarity", "crp_mythic", nil)
Cryptid.pointerblistifytype("rarity", "crp_exomythic", nil)
Cryptid.pointerblistifytype("rarity", "crp_22exomythic4mecipe", nil)

-- Update the cryptposting member count using https
Cryptposting = Cryptposting or {}

local member_fallback = 40 -- Fallback member count in case the request fails or is not available
local succ, https = pcall(require, "SMODS.https")
local last_update_time = 0
local initial = true
Cryptposting.member_count = member_fallback
if not succ then
	sendErrorMessage("HTTP module could not be loaded. " .. tostring(https), "Cryptposting")
end

local function apply_discord_member_count(code, body, headers)
	if body then
		Cryptposting.member_count = string.match(body, '"approximate_member_count"%s*:%s*(%d+)') or Cryptposting.member_count
	end
end
function Cryptposting.update_member_count()
	if https and https.asyncRequest then
		if (os.time() - last_update_time >= 60) or initial then
			initial = false
			last_update_time = os.time()
			https.asyncRequest(
				"https://discord.com/api/v10/invites/Jk9Q9usrNy?with_counts=true" .. "&v=" .. tostring(os.time()),
				apply_discord_member_count
			)
		end
	end -- :bulgoe:
end
