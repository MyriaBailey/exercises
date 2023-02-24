# All Substrings

# Input: A string
# Output: Array of all possible substrings

# Rules
# - Returned list should be ordered by where the substring starts,
#     and then by length of the substring.
# - May use the previous leading_substrings method written
# - Assume non-empty???

# Examples/Test Cases
# substrings('abcde') == [
  # 'a', 'ab', 'abc', 'abcd', 'abcde',
  # 'b', 'bc', 'bcd', 'bcde',
  # 'c', 'cd', 'cde',
  # 'd', 'de',
  # 'e'
# ]

# Data Structures
# - An array containing all the position 0 starting substrings,
#     and then all the position 1 starting substrings,
#       and so on.
# - Not a nested or 2d array! They're just all in there.

# Algorithms
# A method that takes a string
# - initialize a result array
# - calculate ending string index
# - for numbers 0 .. final_index,
#   - that's the starting index.
#   - for numbers starting_index .. final_index
#     - add substring starting_index .. current_index to the result

# Code
def substrings(str)
  result = []
  final_idx = str.length - 1
  0.upto(final_idx) do |starting_idx|
    starting_idx.upto(final_idx) do |current_idx|
      result << str[starting_idx..current_idx]
    end
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

