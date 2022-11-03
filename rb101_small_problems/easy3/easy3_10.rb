# Palindromic Numbers

# Input: an integer
# Output: a true or false value

# Rules
# - Returns true if the integer is palindromic, false otherwise
# - the number should be the same when read forwards and backwards

# Examples/Test Cases
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# Data Structures
# - A method that takes an integer and returns a bool

# Algorithms
# A method that takes an integer 'num' and returns a bool
# - convert 'num' to a string
# - implicitly return the comparison of 'num' and 'num' reversed

# Code

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# Concluding notes
# - Very straightforward since no odd characters to worry about
# - Could be easier to read if the `.to_s` method is only called once?
# - Might check if it can still be done as an integer?
# - Otherwise very easy.