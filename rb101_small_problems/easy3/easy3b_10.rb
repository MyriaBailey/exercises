# Uppercase Check

# Input: A string
# Output: returned boolean

# Rules
# - String may be empty (return true)
# - return true if ALL the alphabetic characters are uppercase
# - return false otherwise
# - non alphabetic characters ignored

# Examples/Test Cases
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# Data Structures
# - A string that is inspected
# - A control expression

# Algorithms
# A method that takes a string
# - if the string == the same string but made uppercase: true, else false

# Code

def uppercase?(str)
  str == str.upcase ? true : false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Concluding Notes
# - ternary expression not needed, since just the expression itself
#     will return the true/false looked for