function IS_UTIL.reverse_table(t)
  local reversed = {}
  for i = #t, 1, -1 do
    table.insert(reversed, t[i])
  end
  return reversed
end

IS_UTIL.DECK_SKINS = {
  {
    id = 'na',
    name = 'Simplistic',
    suits = {
      'Hearts', 'Clubs', 'Diamonds', 'Spades',
    }
  },
  {
    id = 'gw2',
    name = 'PvZ Garden Warfare 2',
    suits = {
      'Hearts',
    }
  },
  {
    id = 'deltaIV',
    name = 'Deltarune Chapter 4',
    suits = {
      'Clubs',
    }
  },
  {
    id = 'ror',
    name = 'Risk of Rain',
    suits = {
      'Diamonds',
    }
  }
}