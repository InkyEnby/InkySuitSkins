--- STEAMODDED HEADER
--- MOD_NAME: Inky's Suit Skins
--- MOD_ID: InkySuitSkins
--- MOD_AUTHOR: [Inky 'Ivory' Enby]
--- MOD_DESCRIPTION: The collection of suit skins I've made for Balatro.

----------------------------------------------
------------MOD CODE -------------------------
IS_UTIL = {}

SMODS.load_file("utilities/stuff.lua")()
SMODS.load_file("utilities/atlas.lua")()

for _, data in ipairs(IS_UTIL.DECK_SKINS) do
  for _, suit in ipairs(data.suits) do
    local key = data.id .. "_" .. suit:lower()

    -- Common ranks used in both palettes
    local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'}
	--local ranks_num = {'Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10'}
	--local ranks_face = {'Jack', 'Queen', 'King'}
    local display_ranks = {'Ace', 'King', 'Queen', 'Jack', '10'}

    local atlas_lc = SMODS.Atlas {
      key = key .. '_lc',
      path = 'collabs/' .. key .. '_lc.png',
      px = 71,
      py = 95
    }

    local atlas_hc = SMODS.Atlas {
      key = key .. '_hc',
      path = 'collabs/' .. key .. '_hc.png',
      px = 71,
      py = 95
    }

    SMODS.DeckSkin {
      key = key,
      suit = suit,
      loc_txt = {
        ['en-us'] = data.name
      },
      palettes = {
        {
          key = 'lc',
          ranks = ranks,
          display_ranks = display_ranks,
          pos_style = 'ranks',
          atlas = atlas_lc.key
        },
        {
          key = 'hc',
          ranks = ranks,
          display_ranks = display_ranks,
          pos_style = 'ranks',
          atlas = atlas_hc.key,
          hc_default = true
        }
      }
    }
  end
end
----------------------------------------------
------------MOD CODE END----------------------