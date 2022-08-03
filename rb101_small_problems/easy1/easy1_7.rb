# Stringy Strings

# Input: a positive integer
# Output: a returned string of alternating 1s and 0s

# Rules
# - Only taking a positive integer means will always have at least 1 char
# - The string will always start with 1
# - The length of the string will match the given integer value

# Examples/Test Cases
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Data Structures
# - Take an integer
# - Based on the int value, add things to a string

# Algorithm
# A method that takes an integer and returns a string
# - Initialize an empty string
# - For [given integer] times, do
#   - if idx is even, add '1' to the string
#   - if idx is odd, add '0' to the string
# - Return the string

# Further Exploration
# - Modify method to take an additional optional parameter that defaults to 1
# - Adjust method to start with 0 instead if the new parameter is set to 0
#   - Shift the index value by 1 before conditional statement(s)

# Code

def stringy(num, starter = 1)
  output = ''

  num.times do |idx|
    idx += 1 if starter == 0
    output << '1' if idx.even?
    output << '0' if idx.odd?
  end

  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Concluding Statements
# - Could shorten the conditional statements with a ternary operator
