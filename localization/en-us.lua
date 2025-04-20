return {
	descriptions = {
		Back = {
			b_gbl_weezer = {
				name = "Weezer Deck",
        			text = {
            				"Start with an eternal",
					"{C:attention}Buddy Jolly{}",
				},
			},
			b_gbl_hyperspace = {
				name = "Hyperspace Deck",
        			text = {
            				"{C:attention}+1 Ascension Power{}",
					"to all poker hands",
					"and {C:attention}+1{} card selection",
					"limit when {C:attention}Boss Blind{}",
					"defeated",
				},
			},
		},
		Joker = {
			j_gbl_buddy_jolly = {
				name = "Buddy Jolly",
				text = {
					"If {C:attention}scored cards'{} values add up to a multiple of {C:attention}4{},",
					"this Joker gains {C:chips}+#3#{} Chips and {C:mult}+#4#{} Mult",
					"{C:inactive,s:0.8}(J = 11, Q = 12, K = 13, A = 14){}",
					"{C:inactive}(Currently {C:chips}+#1#{} {C:inactive}and{} {C:mult}+#2#{} {C:inactive}Mult){}",
				},
			},
			j_gbl_brick_by_brick = {
				name = "Brick by Brick",
				text = {
					"One random scored card in {C:attention}winning hand{}",
					"permanently gains {X:mult,C:white}X#1#{} Mult",
					"{C:inactive}I built this shit, brick by brick!{}",
				},
			},
			j_gbl_hotdog = {
				name = 'Hotdog',
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					"Destroyed at end of round",
				},
			},
			j_gbl_hotdog_stand = {
				name = 'Hotdog Stand',
				text = {
					"Create a {C:attention}Hotdog{}",
					"when hand is played",
					"{C:inactive}(Must have room){}",
				},
			},
			j_gbl_pixar_lamp = {
				name = 'Pixar Lamp',
				text = {
					"If played hand is {C:attention}Ascended{},",
					"make all scored cards {C:attention}Light{} cards",
				},
			},
			j_gbl_chakra = {
				name = 'Chakra',
				text = {
					"If played hand contains",
					"a {C:attention}Straight Flush{}, make all",
					"unscored cards {C:dark_edition}Astral{}"
				}
			},
			j_gbl_electric_joker = {
				name = 'Electric Joker',
				text = {
					"If {C:attention}played hand{} has only {C:attention}two{} cards and",
					"is a {C:attention}Pair{}, swap one random {C:attention}modification{}",
					"between the two cards",
					"{C:inactive}({}{C:attention}Enhancement{}{C:inactive}, {}{C:attention}Edition{}{C:inactive}, or {}{C:attention}Seal{}{C:inactive}){}",
					
				}
			},
			j_gbl_inequality_alligator = {
				name = 'Inequality Alligator',
				text = {
					"If played hand contains at least two cards of",
					"differing {C:attention}ranks{}, destroy the highest ranked card",
					"and add its {C:attention}rank{} to this Joker's {C:mult}Mult{} after scoring",
					"{C:inactive,s:0.8}(J = 11, Q = 12, K = 13, A = 14){}",
					"{C:inactive}(Currently {}{C:mult}+#1#{}{C:inactive} Mult){}",
				}
			},
			j_gbl_sandbox = {
				name = 'Sandbox',
				text = {
					"{C:chips}+#1#{} Chip, {C:mult}+#2#{} Mult",
					"{X:chips,C:white}X#3#{} Chip, {X:mult,C:white}X#4#{} Mult",
					"{X:dark_edition,C:white}^#5#{} Chip, {X:dark_edition,C:white}^#6#{} Mult",
				}
			},
			j_gbl_bee = {
				name = 'Bee',
				text = {
					"{X:mult,C:white}X#1#{} Mult for",
					"every {C:attention}Bee{} owned",
					"(Currently {X:mult,C:white}X#2#{} Mult)",
				}
			},
			j_gbl_alvearium = {
				name = 'Alvearium',
				text = {
					"Create {C:attention}1 {C:dark_edition}Negative{} {C:attention}Bee{}",
					"when exiting shop",
					"{C:green}#1# in #2#{} chance to instead",
					"create {C:attention}1 Alvearium{}",
					"{C:inactive}(Must have room)",
				}
			},
			j_gbl_game_of_life = {
				name = 'Game of Life',
				text = {
					"If {C:attention}scored cards'{} values add up",
					"to a multiple of {C:attention}2{}, duplicate",
					"all {C:attention}scored cards{}",
					"If {C:attention}scored cards'{} values don't add",
					"up to a multiple of {C:attention}2{}, destroy all",
					"{C:attention}scored cards{}",
					"{C:inactive,s:0.8}(J = 11, Q = 12, K = 13, A = 14){}",
				}
			},
			j_gbl_radiator = {
				name = 'Radiator',
				text = {
					"Scored cards give {C:mult}+10{}{C:attention}n{} Mult when {C:attention}scored,",
					"where {C:attention}n{} is the number of {C:attention}playing card",
					"triggers {C:attention}this round",
				}
			},
			j_gbl_dam = {
				name = 'Dam',
				text = {
					"Increase values of Joker to",
					"the right by {C:attention}+#1#{} at end of round",
					"Destroyed if played hand",
					"contains any {C:attention}unscoring{} cards",
				}
			},
			j_gbl_greedy = {
				name = "Avarus",
				text = {
					"Played cards with {C:diamond}Diamond",
					"suit give {X:dark_edition,C:white}^#1#{} Mult",
					"when scored",
				}
			},
		},
	},
}