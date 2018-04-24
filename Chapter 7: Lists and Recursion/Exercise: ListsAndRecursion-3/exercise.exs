# Exercise: ListsAndRecursion-3
# An Elixir single-quoted string is actually a list of individual character codes.
# Write a caesar(list, n) function that adds n to each list element,
# wrapping if the addition results in a character greater than z.

# ​ 	​iex>​ MyList.caesar(​'ryvkve'​, 13)
# ​ 	?????? :)

defmodule MyList do
  def caesar([], _inc), do: []
  def caesar([h | t], inc) when h + inc > ?z, do: [h + inc - 26 | caesar(t, inc)]
  def caesar([h | t], inc), do: [h + inc | caesar(t, inc)]
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 