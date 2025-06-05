return {
	descriptions = {
		Joker = {
			j_crp_bulgoe = {
				name = "{C:edition}Bulgoe",
				text = {
					"{C:chips}+#1#{} Chips",
				},
			},
			j_crp_normalis = {
				name = "Normalis",
				text = {
					"{X:dark_edition,C:white}^#1#{} Chip#<s>1# and Mult",
					"{C:inactive}hd bulgoe{}",
				},
			},
			j_crp_sprinter = {
				name = "Sprinter",
				text = {
					"Gains {C:chips}+#2#{} Chip#<s>2#",
					"if played hand",
					"contains a {C:attention}Straight Flush",
					"{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chip#<s>1#)",
				},
			},
			j_crp_scones_bones = {
				name = "Scones, Bones, Skibidi Stones",
				text = {
					"{C:white,X:chips}X#3#{} Chip#<s>3#, {C:white,X:chips}-X#4#{} Chip#<s>4# when you click",
					"Prevents death once if you score at least {C:attention}#2#%{} of the required score",
					"Creates {C:attention}#5# Stone{} card#<s>5# if played hand contains a {C:attention}Flush",
					"{C:inactive}(Death prevention active: #1#)",
				},
			},
			j_crp_jogger = {
				name = "Jogger",
				text = {
					"Gains {C:chips}+#2#{} Chip#<s>2#",
					"if played hand",
					"contains a {C:attention}High Card",
					"{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chip#<s>1#)",
				},
			},
			j_crp_tetration_timmy = {
				name = "tetration timmy",
				text = {
					"{X:dark_edition,C:edition}^^#1#{} Mult",
				},
			},
			j_crp_perdurantes = {
				name = "Perdurantes",
				text = {
					"Gains {X:dark_edition,C:white}^#2#{} Mult for every {C:attention}#3#{} triggers",
					"{C:inactive}(Currently {C:attention}#4#{C:inactive} triggers and {X:dark_edition,C:edition}^#1#{C:inactive} Mult){}"
				},
			},
			j_crp_dead_joker = {
				name = "Dead Joker",
				text = {
					"{C:mult}+1{} Mult for every {C:attention}Graveyarded{}",
					"submission in the {C:attention}CSL{}",
					"{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
				},
			},
			j_crp_joker_of_all_trades = {
				name = "Joker of all Trades",
				text = {
					"{C:chips}+#1#{} Chip#<s>1#, {C:mult}+#2#{} Mult",
					"Earn {C:money}$#3#{} at end of round",
				},
			},
			j_crp_millipede = {
				name = "Millipede",
				text = {
					"{C:chips}+#1#{} Chip#<s>1# if played",
					"hand has only {C:attention}#2#{} card#<s>2#",
				},
			},
			j_crp_joker_2 = {
				name = "Joker 2",
				text = {
					"{C:chips}+#1#{} Chip#<s>1#",
				},
			},
			j_crp_joker_3 = {
				name = "Joker 3",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
				},
			},
			j_crp_joker_4 = {
				name = "Joker 4",
				text = {
					"{X:dark_edition,C:white}^#1#{} Mult",
				},
			},
			j_crp_joker_5 = {
				name = "Joker 5",
				text = {
					"{X:dark_edition,C:edition}^^#1#{} Mult",
				},
			},
			j_crp_joker_6 = {
				name = "Joker 6",
				text = {
					"{C:money}+$#1#{}",
				},
			},
			j_crp_joker_7 = {
				name = "Joker 7",
				text = {
					"{C:attention}+#1#{} {C:tarot}Tarot{} card#<s>1#",
					"{C:inactive}(Does not require room)",
				},
			},
			j_crp_joker_8 = {
				name = "Joker 8",
				text = {
					"{X:chips,C:white}X#1#{} Chip#<s>1#",
				},
			},
			["j_crp_joker?"] = {
				name = "Joker?",
				text = {
					"{C:mult}+#1#{} Mult...{C:attention}?",
				},
			},
			j_crp_jolly_of_joker = {
				name = "The Jolly of Joker",
				text = {
					"{X:dark_edition,C:white}^#1#{} Mult if played hand",
					"contains a {C:attention}Pair{}",
				},
			},
			j_crp_evil_jolly_joker = {
				name = "{C:red}EVIL{} Jolly Joker",
				text = {
					"{C:white,X:mult}÷#1#{} Mult if played hand does {C:red}not{}",
					"contain a {C:attention}Pair{}",
				},
			},
			j_crp_duplicare_2 = {
				name = "Duplicare 2",
				text = {
					"This {C:attention}Joker{} gains {C:white,X:mult}X#2#{} Mult",
					"when a {C:attention}Joker{} or",
					"{C:attention}playing card{} is triggered,",
					"retrigger all {C:attention}Jokers{} and {C:attention}playing{}",
					"{C:attention}cards #3#{} additional time#<s>3#",
					"{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult){}",
				},
			},
			j_crp_evil_joker = {
				name = "{C:red}EVIL{}Joker",
				text = {
					"{C:white,X:mult}÷#1#{} Mult",
				},
			},
			j_crp_progressive = {
				name = "Progressive Joker",
				text = {
					"{C:mult}+[round]{} Mult",
					"{C:white,X:mult}X[ante]{} Mult",
					"{C:inactive}Currently {C:mult}+#1#{C:inactive} Mult and {C:white,X:mult}X#2#{C:inactive} Mult{}",
				},
			},
			j_crp_infinitum = {
				name = "Infinitum",
				text = {
					"Scoring cards give {C:dark_edition,X:edition}#2#X#3##1#{} Chip#<s>1# & Mult,",
					"where {C:attention}X{} is their position in their {C:attention}card area{}"
				},
			},
			j_crp_joker_0 = {
				name = "Joker 0",
				text = {
					"{C:attention}+#1#{} Joker#<s>1#",
					"{C:inactive}(Does not require room)",
				},
			},
			j_crp_jonkler = {
				name = "Jonkler",
				text = {
					"{C:dark_edition,X:edition}#1#Twenty-five thousand#2#one{} Mult",
				},
			},
			j_crp_quetta_m = {
				name = "Quetta M",
				text = {
					"{C:dark_edition,X:edition}#4##1##5##2#{} Mult,",
					"increases by {C:attention}#3#{} when you play a {C:attention}Pair{}",
					"{C:inactive}\"#4#-2#5#\" = \"=\"",
					"{C:inactive}\"#4#-1#5#\" = \"+\"",
					"{C:inactive}\"#4#0#5#\" = \"X\"",
				},
			},
			j_crp_pi_joker = {
				name = "Pi Joker",
				text = {
					"{X:chips,C:white}Xpi{} Chips",
					"{X:mult,C:white}Xpi{} Mult",
				},
			},
			j_crp_semicolon = {
				name = "Semicolon",
				text = {
					"Asks {C:attention}really{} nicely for the",
					"{C:attention}Joker{} to the right to trigger",
				},
			},
			j_crp_weather_machine = {
				name = "Weather Machine",
				text = {
					"Prevents death once",
					"This {C:attention}Joker{} gains {C:mult}+#1#{} Mult",
					"when death prevented",
					"{C:inactive}(Death prevention active: #2#)",
					"{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
				},
			},
			["j_crp_:3"] = {
				name = ":3",
				text = {
					":3",
				},
			},
			j_crp_sigma_man = {
				name = "Sigma-Man",
				text = {
					"are you sure",
				},
			},
			j_crp_apple = {
				name = "Apple",
				text = {
					"{C:mult}+#1#{} Mult",
					"Expires in {C:attention}#2#{} rounds",
				},
			},
			j_crp_exodiac = {
				name = "Exodiac",
				text = {
					"{C:cry_exotic}Exotic{} Jokers each give",
					"{X:edition,C:dark_edition}^^^#1#{} Mult when triggered,",
					"create a random {C:dark_edition}Negative{} {C:cry_exotic}Exotic{}",
					"{C:attention}Joker at the end of shop",
				},
			},
			j_crp_heptation_henry = {
				name = "heptation henry",
				text = {
					"{C:dark_edition,X:edition}#1#5#2##3#{} Mult",
				},
			},
			j_crp_morble = {
				name = "Morble",
				text = {
					"Jokers give {C:white,X:money}^$#1#{} when triggered",
				},
			},
			j_crp_room_for_all = {
				name = "Room For All",
				text = {
					"{C:attention}+#1#{} hand siz#<s>1#, {C:attention}Joker{} slot#<s>1#,",
					"and {C:attention}consumable{} slot#<s>1#"
				},
			},
			j_crp_exponentia_2 = {
				name = "Exponentia 2",
				text = {
					"This {C:attention}Joker{} gains {C:white,X:dark_edition}^#2#{} Mult",
					"when {C:white,X:dark_edition}^Mult{} is triggered",
					"{C:inactive}(Currently {C:white,X:dark_edition}^#1#{C:inactive} Mult){}"
				},
			},
			j_crp_bulgoes_hiking_journey = {
				name = "{C:edition}Bulgoe{}'s Hiking Journey",
				text = {
					"Each {C:attention}card{} played",
					"permanently gains {X:chips,C:white}X#1#{} Chip#<s>1#",
					"when scored"
				},
			},
			j_crp_water_bottle = {
				name = "Water Bottle",
				text = {
					"Creates {C:attention}#1# Splash#<es>1#{}",
					"when sold",
					"{C:inactive}(Does not require room){}",
				},
			},
			j_crp_playerrkillerr = {
				name = "playerrKillerr",
				text = {
					"Lowers the framerate to {C:attention}1{} FPS, randomizes resolution, disables fullscreen, and causes an instant loss if game speed is above {C:attention}X0.5{}.",
					"Changes game language every second, all rerolls are free, and redeems {C:attention}50000 unskippable {}{C:tarot}Arcana Packs{} after each {C:attention}Blind{} is revealed.",
					"Generates {C:attention}50000000 Googol Play Cards{} at the start of each round. All {C:attention}Jokers{} except those created by this {C:attention}Joker{} become {C:attention}Authentic{} and {C:attention}Restricted.",
					"Grants {X:chips,C:white}X10{} Chips, {X:chips,C:white}X10{} Chips, and randomizes screen rotation whenever any card is scored.",
					"Does NOT give {X:mult,C:white}X10{} Mult when the screen is clicked, even if {C:attention}The Man{} tells you otherwise. Do not follow {C:attention}The Man's{} orders.",
					"Forces CRT effect intensity to {C:attention}200{}. Game speed is reduced by {C:green}1%{} per click. Rerolling causes exponential duplication of this Joker's values.",
					"Sends a very real missile to your home for every card played. Selling this {C:attention}Joker{} permanently deletes {C:attention}System32{} from your hard drive.",
					"{C:white,X:chips}X10{} Chips. {C:white,X:chips}X10{} more Chips",
					"If the player forgets about the {C:white,X:chips}XChips{} on this Joker, {C:white,X:chips}X10{} Chips. If the player does not forget about the amount of {C:white,X:chips}XChips{} on this Joker, {C:white,X:chips}X10{} Chips",
					"Grants {X:chips,C:white}X10{} Chips. Also provides {X:edition,C:dark_edition}#1#69#2#{}2 Chips and {X:edition,C:dark_edition}#1#69#2#{}2 Mult.",
					"Clicks have a {C:green}32%{} chance to fail. After entering a shop, rerolls will occur non-stop, permanently.",
					"{C:planet}Celestial Packs{} have a {C:green}98.27%{} chance to have {C:attention}300000000{} {C:spectral}Black Holes{} in them. {C:spectral}Spectral Packs{} have a {C:green}27.98%{} chance to overheat your device when opened.",
					"Lastly, divides this description by {C:attention,s:7.2}0{}, then adds the total number of {C:attention}approved suggestions{} in the {C:attention}CSL{} to {C:mult}Mult{}."
				}
			},
			j_crp_purist_jolly_joker = {
				name = "Purist Jolly Joker",
				text = {
					"{C:mult}+#1#{} Mult if",
					"played hand is",
					"a {C:attention}Pair",
				},
			},
			j_crp_big_joker = {
				name = "Big Joker",
				text = {
					"{C:mult}+#1#{} Mult",
				},
			},
			j_crp_bulgoe_prize = {
				name = "{C:edition}Bulgoe{}Prize",
				text = {
					"Whenever any {C:attention}Booster Pack{} is",
					"skipped create {C:attention}#1#{} {C:edition,X:grey}Bulgoe#<s>1#{}",
					"{C:inactive}(Does not require room)",
				},
			},
			j_crp_chip = {
				name = "chip",
				text = {
					"You get {C:chips}one{}.",
				},
			},
			j_crp_gamblecore = {
				name = "Gamblecore",
				text = {
					"{C:red}Fixed {}{C:green}#1# in #2#{} chance",
					"for {C:red}+nane0{} Mult",
				},
			},
			j_crp_centipede = {
				name = "Centipede",
				text = {
					"{C:chips}+#1#{} Chips if played",
					"hand has only {C:attention}#2#{} card#<s>2#",
				},
			},
			j_crp_dorito = {
				name = "dorito",
				text = {
					"You get {C:mult}one{}.",
				},
			},
			j_crp_decipede = {
				name = "Decipede",
				text = {
					"{C:chips}+#1#{} Chips if played",
					"hand has only {C:attention}#2#{} card#<s>2#",
				},
			},
			j_crp_pentation_peter = {
				name = "pentation peter",
				text = {
					"{C:dark_edition,X:edition}^^^#1#{} Mult",
				},
			},
			j_crp_tetrationa = {
				name = "Tetrationa",
				text = {
					"This {C:attention}Joker{} gains {C:edition,X:dark_edition}^^#2#{} Mult",
					"when {C:white,X:dark_edition}^Mult{} is triggered",
					"{C:inactive}(Currently {C:edition,X:dark_edition}^^#1#{C:inactive} Mult){}"
				},
			},
			j_crp_bulgoeship_card = {
				name = "{C:edition}Bulgoe{}ship Card",
				text = {
					"{X:dark_edition,C:edition}^^#1#{} Mult for each member",
					"in the {C:attention}Cryptposting Discord{}",
					"{C:inactive}(Currently {X:dark_edition,C:edition}^^#2#{C:inactive} Mult)",
					"{C:blue,s:0.7}https://discord.gg/Jk9Q9usrNy{}",
				},
			},
			j_crp_iterum_2 = {
				name = "Iterum 2",
				text = {
					"Retrigger all cards played",
					"{C:attention}#2#{} time#<s>2#,",
					"each played card gives",
					"{X:mult,C:white}X#1#{} Mult when scored",
					"{C:inactive}(Max {}{C:attention}#3#{}{C:inactive} retrigger#<s>3#)",
				},
			},
			j_crp_underflow = {
				name = "Underflow",
				text = {
					"{C:white,X:dark_edition}^#1#{} Mult",
					"Decreases by {C:white,X:dark_edition}^#2#{} Mult",
					"at end of round",
				},
			},
			j_crp_statically_charged = {
				name = "Statically Charged",
				text = {
					"All cards are",
					"{C:dark_edition}Overloaded{}",
					"{C:dark_edition}Overloaded{} cards do not",
					"cost extra",
				},
			},
			j_crp_playerrwon = {
				name = "playerrWon",
				text = {
					"{C:dark_edition,X:edition}#4#N#5##2#{} Mult",
					"{C:attention}N{} increases by {C:attention}#3#{} at",
					"end of round",
					"{C:inactive}(Currently {}{C:attention}#1#{}{C:inactive}){}",
				},
			},
			j_crp_evil_bulgoe = {
				name = "{C:red}EVIL{}{C:edition}Bulgoe{}",
				text = {
					"{C:white,X:chips}÷#1#{} Chip#<s>1#",
				},
			},
			j_crp_dumpster_diver = {
				name = "Dumpster Diver",
				text = {
					"Create {C:attention}#1#{} {C:dark_edition}Negative{} {C:crp_trash}Trash{} {C:attention}Joker#<s>1#{}",
					"at end of round,",
					"{C:green}#2# in #3#{} chance to instead create",
					"{C:attention}#4#{} {C:dark_edition}Negative{} {C:rare}Rare{} {C:attention}Joker#<s>4#{}",
				},
			},
			j_crp_glitchkat10 = {
				name = "Glitchkat10",
				text = {
					"{C:chips}-#1#{} Chip#<s>1#",
					"{C:mult}-#2#{} Mult",
					"{C:white,X:chips}÷#3#{} Chip#<s>1#",
					"{C:white,X:mult}÷#4#{} Mult",
				},
			},
			j_crp_gudusername = {
				name = "GudUsername",
				text = {
					"{C:white,X:chips}X#1#{} Chip#<s>1#",
					"{C:white,X:mult}X#2#{} Mult",
					"{C:white,X:dark_edition}^#3#{} Chip#<s>3#",
					"{C:white,X:dark_edition}^#4#{} Mult",
					"{C:edition,X:dark_edition}^^#5#{} Chip#<s>4#",
					"{C:edition,X:dark_edition}^^#6#{} Mult",
					"{C:dark_edition,X:edition}^^^#7#{} Chip#<s>1#",
					"{C:dark_edition,X:edition}^^^#8#{} Mult",
				},
			}
		},
		Spectral =  {
			c_crp_prayer = {
				name = "Prayer",
				text = {
					"Create a {C:crp_mythic}Mythic{} {C:attention}Joker{},",
					"{C:red}destroy{} all other {C:attention}Jokers{},",
					"including {C:purple}Eternals"				
				}
			},
			c_crp_gate_of_prayers = {
				name = "Gate of Prayers",
				text = {
					"Create an {C:crp_exomythic}ExoMythic{} {C:attention}Joker{},",
					"{C:red}destroy{} all other {C:attention}Jokers{},",
					"bypassing {C:red}all effects{}"
				}
			},
			c_crp_stairway_to_heaven = {
				name = "Stairway to Heaven",
				text = {
					"Create a {C:crp_2exomythic4me}2ExoMythic4me{} {C:attention}Joker{},",
					"{C:red}destroy{} all other {C:attention}items{},",
					"bypassing {C:red}all effects{}"
				}
			}
		},
		Back = {
			b_crp_cyan = {
				name = "Cyan Deck",
				text = {
					"{C:attention}+#1#{} hand size",
					"{C:red}-#2#{} discard#<s>2#"
				}
			},
			b_crp_gray = {
				name = "Gray Deck",
				text = {
					"Start with {C:money}$0",
					"Start with {C:attention}Money Tree"
				}
			},
			b_crp_white = {
				name = "White Deck",
				text = {
					"{C:attention}-#1#{} Joker slot",
					"{C:blue}+#2#{} hand"
				}
			},
			b_crp_kiddie = {
				name = "Kiddie Deck",
				text = {
					"{C:blue}-#1#{} hands, {C:red}-#2#{} discard",
					"{C:red}-#3#{} {C:attention}Joker{} slots, {C:red}-#4#{} {C:attention}consumable{} slot",
					"{C:red}-#5#{} hand size",
					"{C:attention}#6#% Blind{} size"
				}
			},
			b_crp_adult = {
				name = "Adult Deck",
				text = {
					"{C:attention}+#1#{} {C:attention}Joker{} slot, {C:attention}+#2#{} {C:attention}consumable{} slot",
					"{C:attention}+#3#{} hand size",
					"{C:attention}#4#% Blind{} size"
				}
			}
		},
		Tag = {
			tag_crp_common_tag = {
				name = "Common Tag",
				text = {
					"Shop has a free",
					"{C:common}Common{} {C:attention}Joker{}",
				},
			},
			tag_crp_legendary_tag = {
				name = "Legendary Tag",
				text = {
					"Shop has a full-price",
					"{C:legendary}Legendary{} {C:attention}Joker{}",
				},
			},
			tag_crp_exotic_tag = {
				name = "Exotic Tag",
				text = {
					"Shop has an {C:cry_exotic}Exotic{}",
					"{C:attention}Joker{} at double the price",
				},
			},
			tag_crp_uncommon_2_tag = {
				name = "Uncommon 2 Tag",
				text = {
					"Shop has a free",
					"{C:uncommon}Uncommon 2{} {C:attention}Joker{}",
				},
			},
			tag_crp_rare_2_tag = {
				name = "Rare 2 Tag",
				text = {
					"Shop has a free",
					"{C:rare}Rare 2{} {C:attention}Joker{}",
				},
			},
			tag_crp_m_tag = {
				name = "M Tag",
				text = {
					"Shop has a free",
					"{C:cry_exotic}M{} {C:attention}Joker{}",
				},
			},
			tag_crp_awesome_tag = {
				name = "Awesome Tag",
				text = {
					"Shop has a half-price",
					"{C:crp_awesome}Awesome{} {C:attention}Joker{}",
				},
			},
			tag_crp_mythic_tag = {
				name = "Mythic Tag",
				text = {
					"Shop has a {C:crp_mythic}Mythic{}",
					"{C:attention}Joker{} at quadruple the price",
				},
			},
			["tag_crp_better_better_top-up_tag"] = {
				name = "Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:red}Rare{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_better_better_better_top-up_tag"] = {
				name = "Better Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:cry_epic}Epic{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_better_better_better_better_top-up_tag"] = {
				name = "Better Better Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:purple}Legendary{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_better_better_better_better_better_top-up_tag"] = {
				name = "Better Better Better Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:cry_exotic}Exotic{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_better_better_better_better_better_better_top-up_tag"] = {
				name = "Better Better Better Better Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:crp_mythic}Mythic{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_better_better_better_better_better_better_better_top-up_tag"] = {
				name = "Better Better Better Better Better Better Better Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:crp_exomythic}ExoMythic{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_:3_top-up_tag"] = {
				name = ":3 Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:HEX(ff00ff)}:3{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_candy_top-up_tag"] = {
				name = "Candy Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:cry_candy}Candy{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_top-down_tag"] = {
				name = "Top-down Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:cry_cursed}Cursed{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
			["tag_crp_trash_top-up_tag"] = {
				name = "Trash Top-up Tag",
				text = {
					"Create up to {C:attention}#1#",
					"{C:crp_trash}Trash{} {C:attention}Jokers{}",
					"{C:inactive}(Must have room){}"
				}
			},
		},
		Edition = {
			e_crp_overloaded = {
				name = "Overloaded",
				text = {
					"{C:dark_edition,X:edition}^^^#1#{} Chips",
					"{C:dark_edition,X:edition}^^^#2#{} Mult",
				},
			},
			e_crp_fourdimensional = {
				name = "Four-Dimensional",
				text = {
					"{C:green}#1# in #2#{} chance to",
					"retrigger {C:attention}#3#{} times",
				},
			},
			e_crp_zany = {
				name = "Zany",
				text = {
					"{C:mult}+#1#{} Mult",
					"This card is feeling",
					"rather {C:attention}zany{}",
				},
			},
			e_crp_mad = {
				name = "Mad",
				text = {
					"{C:mult}+#1#{} Mult",
					"This card is feeling",
					"rather {C:attention}mad{}",
				},
			},
			e_crp_crazy = {
				name = "Crazy",
				text = {
					"{C:mult}+#1#{} Mult",
					"Counts as {C:attention}3 Mad Jokers{}"
				},
			},
			e_crp_insane = {
				name = "Insane",
				text = {
					"{C:mult}+#1#{} Mult",
					"Counts as {C:attention}3 Crazy Jokers{}",
					"{C:inactive}(AKA {C:attention}9 Mad Jokers{C:inactive})"
				},
			},
			--[[ e_crp_psychic = {
				name = "Psychic",
				text = {
					"{C:edition,X:dark_edition}#1##2##3##4#{} Chips",
					"Operator increases by {C:attention}#5#{} for every",
					"{C:attention}#6# 7{}s played or discarded",
				},
			}, ]]--
		}
	},
	misc = {
		dictionary = {
			["k_crp_self-insert"] = "Self-Insert",
			k_crp_trash = "Trash",
			k_crp_m = "M",
			k_crp_uncommon_2 = "Uncommon 2",
			k_crp_rare_2 = "Rare 2",
			k_crp_awesome = "Awesome",
			k_crp_cipe = "cipE",
			k_crp_mythic = "Mythic",
			k_crp_exotic_2 = "Exotic 2",
			k_crp_exomythic = "ExoMythic",
			["k_crp_:3"] = ":3",
			k_crp_cryptastic = "Cryptastic",
			k_eaten = "Munch",
			k_bulgoe_spawn = "+1 Bulgoe",
			k_crp_2exomythic4me = "2ExoMythic4me",
			k_crp_22exomythic4mecipe = "22ExoMythic4meCipe",
			k_crp_exomythicepicawesomeuncommon2mexotic22exomythic4mecipe = "ExoMythicEpicAwesomeUncommon2MExotic22ExoMythic4meCipe",
			k_crp_hyperexomythicepicawesomeuncommon2mexotic2gigaomegaalphaomnipotranscendant2exomythic4mecipe = "HyperExoMythicEpicAwesomeUncommon2MExotic2GigaOmegaAlphaOmnipotranscendant2ExoMythic4meCipe",
		},
		labels = {
			crp_overloaded = "Overloaded",
			crp_fourdimensional = "Four-Dimensional",
			crp_zany = "Zany",
			crp_mad = "Mad",
			crp_crazy = "Crazy",
			crp_insane = "Insane",
			--[[ crp_psychic = "Psychic", ]]--
		},
		v_dictionary = {
			everything = "Everything: #1#",
			colon_3 = ":3",
			placeholder = "Placeholder Art: #1#",
		}
	}
}
