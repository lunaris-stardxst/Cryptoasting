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

local exomythic4me_gradient = SMODS.Gradient({
    key="2exomythic4me",
    colours = {
        HEX("ff6600"),
        HEX("708b91"), 
        HEX("1e9eba"),
        HEX("ffff00"),
		HEX("00ffff")
    },
	cycle = 7
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

local exomythicepicawesomeuncommon2mexotic22exomythic4mecipe_gradient = SMODS.Gradient({
	key="exomythicepicawesomeuncommon2mexotic22exomythic4mecipe",
	colours = {
		HEX("ff6600"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("ffff00"),
		HEX("ef0098"),
		HEX("00ffff"),
		HEX("4bc292"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("ff6600"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("ffff00"),
		HEX("ef0098")
	},
	cycle = 2 -- i have no idea why this isn't affecting the speed rn
})

local hyperexomythicepicawesomeuncommon2mexotic2gigaomegaalphaomnipotranscendant2exomythic4mecipe_gradient = SMODS.Gradient({
	key="hyperexomythicepicawesomeuncommon2mexotic2gigaomegaalphaomnipotranscendant2exomythic4mecipe",
	colours = {
		HEX("989898"),
		HEX("272727"),
		HEX("ff6600"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("ffff00"),
		HEX("ef0098"),
		HEX("00ffff"),
		HEX("4bc292"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("989898"),
		HEX("272727"),
		HEX("ff6600"),
		HEX("708b91"), 
		HEX("1e9eba"),
		HEX("ffff00"),
		HEX("ef0098")
	},
	cycle = 1
})

local m = SMODS.Gradient({
    key="m",
    colours = {
        HEX("708b91"), 
        HEX("1e9eba")
    }
})

SMODS.Rarity({
	key = "self-insert",
	badge_colour = HEX("982700"),
	pools = { ["Joker"] = true },
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
	pools = { ["Joker"] = true },
})

SMODS.Rarity({
	key = "rare_2",
	badge_colour = G.C.RARITY[3],
	pools = { ["Joker"] = true },
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
})

SMODS.Rarity({
	key = "exotic_2",
	badge_colour = m,
})

SMODS.Rarity({
	key = "exomythic",
	badge_colour = exomythic_gradient,
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
	key = "2exomythic4me",
	badge_colour = exomythic4me_gradient,
})

SMODS.Rarity({
	key = "22exomythic4mecipe",
	badge_colour = exomythic4mecipe_gradient,
})

SMODS.Rarity({
	key = "exomythicepicawesomeuncommon2mexotic22exomythic4mecipe",
	badge_colour = exomythicepicawesomeuncommon2mexotic22exomythic4mecipe_gradient,
})

SMODS.Rarity({
	key = "hyperexomythicepicawesomeuncommon2mexotic2gigaomegaalphaomnipotranscendant2exomythic4mecipe",
	badge_colour = hyperexomythicepicawesomeuncommon2mexotic2gigaomegaalphaomnipotranscendant2exomythic4mecipe_gradient,
})