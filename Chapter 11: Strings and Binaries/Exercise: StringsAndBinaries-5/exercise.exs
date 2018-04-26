# Exercise: StringsAndBinaries-5
# Write a function that takes a list of dqs and prints each on a separate line,
# centered in a column that has the width of the longest string.
# Make sure it works with UTF characters.

# ​ 	​iex>​ center([​"​​cat"​, ​"​​zebra"​, ​"​​elephant"​])
# ​ 	  cat
# ​ 	 zebra
# ​ 	elephant


reducer = fn line, acc ->
  if acc.width do
    %{acc | list: [String.pad_leading(line, div(acc.width + 1, 2) + div(String.length(line), 2), " ") | acc.list]}
  else
    %{acc | width: String.length(line), list: [line | acc.list]}
  end
end

center = fn str_list ->
  str_list
  |> Enum.sort(&(String.length(&1) > String.length(&2)))
  |> Enum.reduce(%{width: nil, list: []}, &reducer.(&1, &2))
  |> Map.get(:list)
  |> Enum.each(&IO.puts/1)
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
