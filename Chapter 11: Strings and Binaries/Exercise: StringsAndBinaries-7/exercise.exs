# Exercise: StringsAndBinaries-7
# Chapter 7 had an exercise about calculating sales tax.
# We now have the sales information in a file of comma-separated id, ship_to,
# and amount values. The file looks like this:

# ​ 	id,ship_to,net_amount
# ​ 	123,:NC,100.00
# ​ 	124,:OK,35.50
# ​ 	125,:TX,24.00
# ​ 	126,:TX,44.80
# ​ 	127,:NC,25.00
# ​ 	128,:MA,10.00
# ​ 	129,:CA,102.00
# ​ 	120,:NC,50.00

# Write a function that reads and parses this file
# and then passes the result to the sales_tax function.
# Remember that the data should be formatted into a keyword list,
# and that the fields need to be the correct types
# (so the id field is an integer, and so on).

# You’ll need the library functions File.open, IO.read(file, :line), and IO.stream(file).

defmodule Parser do
  def parse do
    {:ok, file} = File.open("list.txt")

    keys =
      file
      |> IO.read(:line)
      |> parse_line
      |> Enum.map(&parse_atom/1)
    
    file
    |> IO.stream(:line)
    |> Enum.map(&build_record(keys, parse_line(&1)))
  end

  defp build_record(keys, values) do
    keys
    |> Enum.zip(values)
    |> Enum.map(&build_value/1)
  end

  defp build_value({:id, id}), do: {:id, String.to_integer(id)}
  defp build_value({:ship_to, ship_to}), do: {:ship_to, parse_atom(ship_to)}
  defp build_value({:net_amount, net_amount}), do: {:net_amount, String.to_float(net_amount)}

  defp parse_line(string) do
    string
    |> String.slice(0..-2)
    |> String.split(",")
  end

  defp parse_atom(":" <> string), do: String.to_atom(string)
  defp parse_atom(string), do: String.to_atom(string)
end

defmodule Tax do
  @tax_rates [ NC: 0.075, TX: 0.08 ]

  def calc(orders) do
    for x <- orders, do: x ++ [total_amount: x[:net_amount] * (1 + (@tax_rates[x[:ship_to]] || 0))]
  end
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
