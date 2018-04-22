# Exercise: ModulesAndFunctions-3
# Add a quadruple function. (Maybe it could call the double function.…)

defmodule Times do
  def double(x), do: x * 2
  def triple(x), do: x * 3
  def quadruple(x), do: x |> double |> double
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 