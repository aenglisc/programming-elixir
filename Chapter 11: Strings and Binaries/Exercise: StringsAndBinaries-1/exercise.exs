# Exercise: StringsAndBinaries-1
# Write a function that returns true if a single-quoted string
# contains only printable ASCII characters (space through tilde).

in_ascii = fn charlist -> Enum.reduce(charlist, true, &(&2 and &1 in ?\s..?~))

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
