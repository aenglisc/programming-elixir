# Exercise: ModulesAndFunctions-4
# Implement and run a function sum(n) that uses recursion
# to calculate the sum of the integers from 1 to n.
# You’ll need to write this function inside a module in a separate file.
# Then load up iex, compile that file, and try your function.

defmodule Maths do
  def sum(1), do: 1
  def sum(x), do: x + sum(x - 1)
end

"""
iex Chapter\ 6:\ Modules\ and\ Named\ Functions/Exercise:\ ModulesAndFunctions-4/exercise.exs
Erlang/OTP 20 [erts-9.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]
iex(1)> Maths.sum 5
15
iex(2)> Maths.sum 4
10
"""

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.

