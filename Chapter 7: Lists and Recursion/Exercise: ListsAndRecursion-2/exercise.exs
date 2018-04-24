# Exercise: ListsAndRecursion-2
# Write a max(list) that returns the element with the maximum value in the list.
# (This is slightly trickier than it sounds.)

defmodule MyList do
  def max([h]), do: h
  def max([h1, h2 | t]) when h1 > h2, do: max([h1 | t])
  def max([_h1, h2 | t]), do: max([h2 | t])
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 
