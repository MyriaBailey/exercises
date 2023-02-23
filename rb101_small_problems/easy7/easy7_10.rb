# The End Is Near But Not Here

# Input: A string
# Output: The second to last word of the string

# Rules
# - Words are any sequence of non-blank characters
#     (ie, separated by spaces)
# - Assume string will always contain at least two words

# Examples/Test Cases
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# Data Structures
# - A string of characters, split into an array of words

# Algorithms
# A method that takes a string
# - Split the string by spaces into an array,
#   - call the second to last idx of the array

# Code
def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'