# Exercise: ListsAndRecursion-1
# Write a mapsum function that takes a list and a function.
# It applies the function to each element of the list and then sums the result, so

# ​ 	​iex>​ MyList.mapsum [1, 2, 3], &(&1 * &1)
# ​ 	14

defmodule MyList do
  def mapsum([], _fun), do: 0
  def mapsum([h | t], fun), do: fun.(h) + mapsum(t, fun)
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
