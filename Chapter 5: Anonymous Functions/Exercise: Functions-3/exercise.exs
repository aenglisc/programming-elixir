# Exercise: Functions-3
# The operator rem(a, b) returns the remainder after dividing a by b.
# Write a function that takes a single integer (n) and
# calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n.
# Call it seven times with the arguments 10, 11, 12, and so on.
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”
# (Yes, it’s a FizzBuzz solution with no conditional logic.)[11]

fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, z -> z
end

go_fizzbuzz = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

for x <- 10..16, do: go_fizzbuzz.(x)

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks.

