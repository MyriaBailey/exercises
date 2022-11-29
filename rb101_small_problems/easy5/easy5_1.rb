# ASCII String Value

# Input: A string
# Output: An int value of the sum of ascii values of the string

# Rules
# - Take a string of any length (including empty)
# - Determine the ASCII value of each character of the string
# - Sum the total value of ASCII values
# - Return the sum
# - String#ord is allowed

# Examples/Test Cases
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Data Structures
# - A string
# - An int summation of values
# - A method to iterate over the string's characters

# Algorithms
# A method that takes a string and returns an int
# - Initialize `sum` = 0
# - For each character of the string...
#   - Determine the ASCII value of the selected character
#   - Add the ASCII value to the sum variable
# - Return sum

# Code

def ascii_value(str)
  sum = 0
  str.each_char { |chr| sum += chr.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0