# Exercise: ControlFlow-3
# Many built-in functions have two forms.
# The xxx form returns the tuple {:ok, data} and the xxx! form
# returns data on success but raises an exception otherwise.
# However, some functions don’t have the xxx! form.

# Write an ok! function that takes an arbitrary parameter.
# If the parameter is the tuple {:ok, data}, return the data.
# Otherwise, raise an exception containing information from the parameter.

# You could use your function like this:

# ​ 	file = ok! File.open(​"​​somefile"​)

ok! = fn 
  {:ok, data} -> data
  {:error, reason} -> raise "Error: #{reason}"
    _ -> raise "Unknown error"
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
