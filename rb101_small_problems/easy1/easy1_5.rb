# Reverse It (Part 1)

# Input: Takes a string
# Output: Returns a new, modified string

# Rules
#   - One method named `reverse_sentence`
#     - Method takes a string and RETURNS a new, modified string
#   - Words are shuffled around exactly as is
#     - Capitalization stays the same, order of letters stays the same
#     - Each word remains unchanged aside from order
#   - Words are separated by spaces
#     - If there are no words, return an empty string
#     - If there are no words and extra spaces, still empty string

# Examples and Test Cases
# The following should evaluate to true:
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Data Structures
# - Working primarily with strings within a method
# - Store each word in an array

# Algorithms
#   Reverse the order of words
#   - Initialize a new, empty string ('')
#   - Split given string by ' ' (gives an array, potentially empty)
#   - For each element in this array, add to the beginning of the new string
#     - If the string is not already empty, add an additional ' '
#   - Return the new string

# Code

def reverse_sentence(input)
  output = ''
  input.split(" ").each do |element|
    output.prepend(' ') unless output == ''
    output.prepend(element)
  end
  output
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Concluding Notes
# - Could simplify reversing with the `reverse` and `join` methods.