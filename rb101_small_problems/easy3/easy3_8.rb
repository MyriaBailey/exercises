# Palindromic Strings (Part 1)

# Input: A string
# Output: a true or false value

# Rules
# - Takes a string
# - Checks if it is a palindrome (returns true if yes, false if no)
# - A palindrome reads the exact same forwards and backwards
#   - In this case, case matters, as does punctuation, and spaces
#   - (must be PERFECTLY symmetrical)

# Examples/Test Cases

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Algorithms
# A method that takes a string 'str' and returns true or false:
# - implicit return the resulting value of the evaluation of 'str'
#     and 'str' reversed

# Code

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Concluding notes
# Very straight-forward. No string modifications necessary here.