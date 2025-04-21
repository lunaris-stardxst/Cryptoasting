local mythic_gradient = SMODS.Gradient({
    key="mythic",
    colours = {
        HEX("ff6600"),
        HEX("ffff00")
    }
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

local m = SMODS.Gradient({
    key="m",
    colours = {
        HEX("708b91"), 
        HEX("1e9eba")
    }
})

SMODS.Rarity({
	key = "trash",
	badge_colour = HEX("414141"),
})

SMODS.Rarity({
	key = "m",
	badge_colour = m,
})

SMODS.Rarity({
	key = "uncommon2",
	badge_colour = G.C.RARITY.Uncommon,
})

SMODS.Rarity({
	key = "rare2",
	badge_colour = G.C.RARITY.Rare,
})

SMODS.Rarity({
	key = "awesome",
	badge_colour = HEX("00ffff"),
})

SMODS.Rarity({
	key = "cipe",
	badge_colour = HEX("ef0098"),
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
})

SMODS.Rarity({
	key = "cryptastic",
	badge_colour = m,
})

SMODS.Rarity({
	key = "exomythicepicawesomeuncommon2mexotic_22exomythic4mecipe",
	badge_colour = exomythic_gradient,
})