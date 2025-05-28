local trash_gradient = SMODS.Gradient({
    key="trash",
    colours = {
        HEX("989898"),
        HEX("272727")
    },
	cycle = 5
})

local mythic_gradient = SMODS.Gradient({
    key="mythic",
    colours = {
        HEX("ff6600"),
        HEX("ffff00")
    },
})

local exomythic_gradient = SMODS.Gradient({
    key="exomythic",
    colours = {
        HEX("ff6600"),
        HEX("708b91"), 
        HEX("1e9eba"),
        HEX("ffff00")
    }
})

local exomythic4mecipe_gradient = SMODS.Gradient({
    key="22exomythic4mecipe",
    colours = {
        HEX("ff6600"),
        HEX("708b91"), 
        HEX("1e9eba"),
        HEX("ffff00"),
		HEX("ef0098")
    },
	cycle = 3
})

local m = SMODS.Gradient({
    key="m",
    colours = {
        HEX("708b91"), 
        HEX("1e9eba")
    }
})

SMODS.Rarity({
	key = "trash",
	badge_colour = trash_gradient,
	default_weight = 0.005,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "m",
	badge_colour = m,
})

SMODS.Rarity({
	key = "uncommon_2",
	badge_colour = HEX("4bc292"),
	default_weight = 0.05,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "rare_2",
	badge_colour = G.C.RARITY[3],
	default_weight = 0.05,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "awesome",
	badge_colour = HEX("00ffff"),
})

SMODS.Rarity({
	key = "cipe",
	badge_colour = HEX("ef0098"),
	default_weight = 0.003,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "mythic",
	badge_colour = mythic_gradient,
		default_weight = 0.0005,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "exotic_2",
	badge_colour = m,
		default_weight = 0.001,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "exomythic",
	badge_colour = exomythic_gradient,
		default_weight = 0.00001,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = ":3",
	badge_colour = HEX("ff00ff"),
	in_shop = true,
	default_weight = 0.005,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})

SMODS.Rarity({
	key = "cryptastic",
	badge_colour = m,
})

SMODS.Rarity({
	key = "exomythicepicawesomeuncommon2mexotic22exomythic4mecipe",
	badge_colour = exomythic_gradient,
})

SMODS.Rarity({
	key = "22exomythic4mecipe",
	badge_colour = exomythic4mecipe_gradient,
		default_weight = 0.0000001,
	pools = { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
})