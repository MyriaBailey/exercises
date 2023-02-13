# Alphabetical Numbers

# Input: An array of integers between 0 and 19 (inclusive)
# Output: An array of those integers sorted by their english spellings

# Rules
# - Take an array of integers
# - contains numbers 0 - 19 inclusive
# - Sort it by the english words for each number

# Examples/Test Cases
# alphabetic_number_sort((0..19).to_a) == [
  # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  # 6, 16, 10, 13, 3, 12, 2, 0
# ]

# Data Structures
# - An array containing each number's english word (idx = number repped)

# Algorithms
# A method that takes an array
# - initialize an array of english words
# - take the array of ints, and sort by
#     the value of the english array at that number's index

# Code

def alphabetic_number_sort(arr)
  english = %w(zero one two three four five six seven eight
               nine ten eleven twelve thirteen fourteen
               fifteen sixteen seventeen eighteen nineteen)
  arr.sort_by {|val| english[val] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]