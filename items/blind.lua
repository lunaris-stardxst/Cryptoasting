SMODS.Atlas {
	key = "blind",
    atlas_table = "ANIMATION_ATLAS",
	path = "atlas_blind.png",
	px = 34,
	py = 34,
	frames = 21
}

SMODS.Blind {
	key = "dice",
	pos = { x = 0, y = 2 },
	boss = { min = 3, max = 10 },
	atlas = "blind",
    mult = math.random(1, 6),
	boss_colour = HEX("26bc55"),
    crp_credits = {
		idea = { "Poker The Poker" },
        art = { "George The Rat" },
		code = { "Glitchkat10" }
	}
}

SMODS.Blind {
	key = "the",
	pos = { x = 0, y = 1 },
	boss = { min = 1, max = 10 },
	atlas = "blind",
	boss_colour = HEX("757575"),
    crp_credits = {
		idea = { "Poker The Poker" },
        art = { "SolvLyi" },
		code = { "Glitchkat10" }
	}
}

SMODS.Blind {
	key = "small...?",
	pos = { x = 0, y = 0 },
	boss = { min = 2, max = 10 },
    mult = -1,
    boss_colour = HEX("3a55ab"),
    crp_credits = {
		idea = { "superb_thing" },
        art = { "LocalThunk" },
		code = { "Glitchkat10" }
	}
}
SMODS.Blind {
	key = "big...?",
	pos = { x = 0, y = 1 },
	boss = { min = 2, max = 10 },
    mult = -1.5,
    boss_colour = HEX("e0a23a"),
    crp_credits = {
		idea = { "aqrlr" },
        art = { "LocalThunk" },
		code = { "Glitchkat10" }
	}
}