SMODS.PokerHand {
	key = "straight_two_pair",
	mult = 4,
	chips = 25,
	l_mult = 1,
	l_chips = 10,
	example = {
		{ "S_7", true },
		{ "C_7", true },
		{ "S_6", true },
		{ "D_6", true },
		{ "H_4", false },
	},
	visible = false,
	evaluate = function(hand)
		local ranks = {nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
		for _, card in ipairs(hand) do
			ranks[card:get_id()] = (ranks[card:get_id()] or 0) + 1
		end
		local scoring_ranks = {}
		for i = 1, #ranks do
			if (ranks[i] or 0) >= 2 and (ranks[i + 1] or 0) >= 2 then
				scoring_ranks[#scoring_ranks + 1] = i
				scoring_ranks[#scoring_ranks + 1] = i + 1
			end
		end
		return {} -- i'll work on it later
	end
}
