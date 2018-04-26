# Exercise: ListsAndRecursion-7
# In the last exercise of Chapter 7, ​Lists and Recursion​, you wrote a span function.
# Use it and list comprehensions to return a list of the prime numbers from 2 to n.

defmodule MyList do
  defp span(max, max), do: [max]
  defp span(min, max) when min > max, do: []
  defp span(min, max), do: [min | span(min + 1, max)]

  def primes_to(n), do: for x <- span(2, n), prime?(x), do: x

  defp prime?(x) when x in span(2, 3), do: true
  defp prime?(x) when rem(x, 2) == 0, do: false
  defp prime?(x), do: checker(3, x, :math.sqrt(x))

  defp checker(div, _x, sqrtx) when div > sqrtx, do: true
  defp checker(div, x, _sqrtx) when rem(x, div) == 0, do: false
  defp checker(div, x, sqrtx), do: checker(div + 2, x, sqrtx)
end

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.
