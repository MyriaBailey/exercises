# Leading Substrings

# Input: A string
# Output: An array of all possible substrings starting from the beginning

# Rules
# - Each substring starts from the beginning of the string,
#     and is of incrementing length

# Examples/Test Cases
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data Structures
# - An array of the string's characters
# - The final array is of the same length...

# Algorithms
# A method that takes a string
# - Initialize empty result array
# - For each char of the string, with index,
#   - add to the array the values of idx 0 to current idx + 1
# - return array

# Code
def leading_substrings(str)
  result = []
  str.chars.each_index {|idx| result << str[0, idx + 1] }
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']