# Exercise: ModulesAndFunctions-7
# Find the library functions to do the following, and then use each in iex.
# (If the word Elixir or Erlang appears at the end of the challenge, then you’ll find the answer in that set of libraries.)

# Convert a float to a string with two decimal digits. (Erlang)
:erlang.float_to_binary(3.14159265358979323846, decimals: 2)

# Get the value of an operating-system environment variable. (Elixir)
System.get_env("USER")

# Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
Path.extname("exercise.exs")

# Return the process’s current working directory. (Elixir)
System.cwd()

# Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
Jason.decode(_) # https://github.com/michalmuskala/jason

# Execute a command in your operating system’s shell.
System.cmd("date", [])

# Excerpt From: Dave Thomas. “Programming Elixir ≥ 1.6 (for Roman Pushkov).” iBooks. 