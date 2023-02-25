# Double Char (Part 1)

# Input: A string
# Output: A new string with every character repeated

# Rules
# - EVERY character is repeated (even spaces)
# - Case is preserved
# - Empty string returns an empty string

# Examples/Test Cases
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# Data Structures
# A string of characters, mapped to be the same character twice

# Algorithms
# A method that takes a string
# - On an array of characters of that string, map so that
#   - new value is char + char
# - rejoin the array of characters

# Code
def repeater(str)
  str.chars.map {|char| char + char }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''