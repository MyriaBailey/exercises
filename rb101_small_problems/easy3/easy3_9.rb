# Palindromic Strings (Part 2)

# Input: a string
# Output: a true or false value

# Rules
# - Return true if the string is a palindrome, false otherwise
# - Case does NOT matter (can be upper or lower case)
# - punctuation and spaces also do NOT matter (only alphanumerics)

# Examples/Test Cases
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Data Structures
# - Working with strings in a method
# - Comparing only the alphanumeric values

# Algorithms
# A method that takes a string and returns true or false
# - convert the string to downcase
# - create a new 'simplified' string of ONLY letters and numbers
#   - delete all according to regex expression `\W` for non-word chars
# - implicit return the comparison with `==`

# Code

def real_palindrome?(str)
  simplified = str.downcase.gsub(/\W/, '')
  simplified == simplified.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# Concluding notes
# - regex expressions may look daunting but are very very helpful