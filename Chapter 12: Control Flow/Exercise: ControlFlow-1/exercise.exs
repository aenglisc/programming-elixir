# Exercise: ControlFlow-1
# Rewrite the FizzBuzz example using case.

defmodule FizzBuzz do
  def up_to(n), do: Enum.map(1..n, &build_fizzbuzz/1)

  defp build_fizzbuzz(n) do
    case {rem(n, 3), rem(n, 5), n} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, n} -> n
    end
  end
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
