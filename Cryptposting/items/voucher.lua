SMODS.Atlas {
	key = "vouchers",
	path = "atlas_voucher.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "placeholders",
	path = "atlas_placeholder.png",
	px = 71,
	py = 95
}

-- commented out due to crashing on use cuz i don't think change_ante_scaling exists and idk how to fix it :sob: - glitch
--[[ SMODS.Voucher {
    key = "reduction",
    atlas = "crp_placeholders",
    pos = { x = 5, y = 2 },
    config = { extra = { ante_scaling = 0.8 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.ante_scaling } }
    end,
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                change_ante_scaling(card.ability.extra.ante_scaling)
                return true
            end
        }))
    end
} ]]--