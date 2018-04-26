# Exercise: StringsAndBinaries-3
# Try the following in iex:

# ​ 	​iex>​ [ ​'cat'​ | ​'dog'​ ]
# ​ 	['cat',100,111,103]
# Why does iex print ’cat’ as a string, but ’dog’ as individual numbers?

"""
  lists of digits are treated as charlists if and only if every item is a valid ascii character
  ['cat' | 'dog'] is a list consisting of a charlist and integers representing ascii characters
  therefore the digits representing 'd', 'o', 'g' aren't treated as characters
"""

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 
