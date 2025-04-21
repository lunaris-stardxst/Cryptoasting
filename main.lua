-- a file specificlaly to load all other lua files in the mod (and for config stuff)

assert(SMODS.load_file('jokers.lua'))()
assert(SMODS.load_file('tags.lua'))()