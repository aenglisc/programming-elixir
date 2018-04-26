# Exercise: StringsAndBinaries-4
# (Hard) Write a function that takes a single-quoted string
# of the form number [+-*/] number and returns the result of the calculation.
# The individual numbers do not have leading plus or minus signs.

# calculate(’123 + 27’) # => 150

calculate = fn charlist ->
  parsed =
    charlist
    |> Enum.filter(&(&1 not in ' '))
    |> Enum.chunk_by(&(&1 in '+-*/'))

  case parsed do
    [x, '+', y] -> List.to_integer(x) + List.to_integer(y)
    [x, '-', y] -> List.to_integer(x) - List.to_integer(y)
    [x, '*', y] -> List.to_integer(x) * List.to_integer(y)
    [x, '/', y] -> List.to_integer(x) / List.to_integer(y)
    _ -> :error
  end
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
