# Odd Numbers

# Input: None
# Output: A list of odd numbers from 1-99 inclusive, one on each line.

# Rules
# - Must print all ODD numbers from 1 - 99 inclusive
# - Each number must be on its own line

# Data Structures
# - A loop of sorts acted on a range of numbers

# Algorithms
# For a range of numbers from 1 to 99 inclusive:
# - if the index is odd, print the index

# Code

(1..99).each { |idx| puts idx if idx.odd? }