# Exercise: ControlFlow-2
# We now have three different implementations of FizzBuzz.
# One uses cond, one uses case, and one uses separate functions with guard clauses.

# Take a minute to look at all three.
# Which do you feel best expresses the problem.
# Which will be easiest to maintain?

# The case style and the implementation using guard
# clauses are different from control structures in most other languages.
# If you feel that one of these was the best implementation,
# can you think of ways to remind yourself
# to investigate these options as you write Elixir code in the future?

"""
Case and separate functions don't seem to be that different as they ultimately
do the same thing, just on slightly different levels. Cond on the other hand
works with booleans, so with things more complex than fizzbuzz I'd image that
it'd be way less readable and maintainable. Maybe it's just me, but pattern
matching not only makes the code more structured, but actually gives a clearer
mental image of what is going to happen to the data.
"""

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 
