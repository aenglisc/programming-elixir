# Exercise: StringsAndBinaries-2
# Write an anagram?(word1, word2) that returns true if its parameters are anagrams.

anagram? = fn w1, w2 -> Enum.sort(w1) == Enum.sort(w2) end

anagram?.('nomad', 'monad')

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 
