# Exercise: ListsAndRecursion-4
# Write a function MyList.span(from, to)
# that returns a list of the numbers from from up to to.

defmodule MyList do
  def span(max, max), do: [max]
  def span(min, max) when min > max, do: span(max, min)
  def span(min, max), do: [min | span(min + 1, max)]
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 
