# Exercise: Functions-1
# Go into iex. Create and run the functions that do the following:

# list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
  list_concat = fn(x, y) -> x ++ y
  list_concat.([:a, :b], [:c, :d])
# sum.(1, 2, 3) #=> 6
  sum = fn(x, y, z) -> x + y + z
  sum.(1, 2, 3)
# pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]
  pair_tuple_to_list = fn({x, y}) -> [x, y]
  pair_tuple_to_list.( { 1234, 5678 } )

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.

