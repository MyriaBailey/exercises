# Reverse It (Part 1)

# Input: A string
# Output: A new string with the words in reverse order

# Rules
# - Casing is preserved
# - Word order is in reverse order
# - Empty string provides empty string
# - A string of spaces only provides empty string

# Examples/Test Cases
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Data Structures
# - An array of words split from a string by spaces

# Algorithms
# A method that takes a string
# - Split string by spaces, reverse the order, and rejoin with spaces

# Code
def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''