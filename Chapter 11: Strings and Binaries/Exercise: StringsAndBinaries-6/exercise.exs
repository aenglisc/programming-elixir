# Exercise: StringsAndBinaries-6
# Write a function to capitalize the sentences in a string. Each sentence is terminated by a period and a space. Right now, the case of the characters in the string is random.

# ​ 	​iex>​ capitalize_sentences(​"​​oh. a DOG. woof. "​)
# ​ 	"Oh. A dog. Woof. ”

capitalize_sentences = fn string ->
  string
  |> String.split(". ")
  |> Enum.map(&String.capitalize/1)
  |> Enum.join(". ")
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
