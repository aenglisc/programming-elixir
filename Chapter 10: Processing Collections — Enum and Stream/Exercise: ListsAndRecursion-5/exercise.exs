# Exercise: ListsAndRecursion-5
# Implement the following Enum functions using no library functions or list
# comprehensions: all?, each, filter, split, and take.
# You may need to use an if statement to implement filter.
# The syntax for this is

# ​ 	​if​ condition ​do​
# ​ 	  expression(s)
# ​ 	​else​
# ​ 	  expression(s)
# ​ 	​end​

defmodule MyEnum do
  def all?([], _fun), do: true
  def all?([h | t], fun), do: fun.(h) and all?(t, fun)

  def each([], _fun), do: :ok
  def each([h | t], fun) do
    fun.(h)
    each(t, fun)
  end

  def filter([], _fun), do: []
  def filter([h | t], fun) do
    if fun.(h), do: [h | filter(t, fun)], else: filter(t, fun)
  end

  def split([], _), do: {[], []}
  def split(list, 0), do: {[], list}
  def split(list, count) when length(list) + count <= 0, do: {[], list}
  def split([h | t], count)do
    count = if count > 0, do: count, else: length([h | t]) + count
    {taken, rest} = split(t, count - 1)
    {[h | taken], rest}
  end

  def take(_list, 0), do: []
  def take(list, count) when count > 0, do: split(list, count) |> elem(0)
  def take(list, count) when count < 0, do: split(list, count) |> elem(1)
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
