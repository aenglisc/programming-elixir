# Exercise: Functions-5
# Use the &… notation to rewrite the following.

# Enum.map [1,2,3,4], fn x -> x + 2 end
Enum.map(1..4, &(&1 + 2))
# Enum.each [1,2,3,4], fn x -> IO.inspect x end
Enum.each(1..4, &IO.inspect/1)

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.

