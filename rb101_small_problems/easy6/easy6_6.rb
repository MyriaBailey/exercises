# Combining Arrays

# Input: two arrays
# Output: both arrays joined, no duplicates

# Rules
# - Take two arrays
# - return an array containing all the values from the argument arrays
# - NO duplicates, even if some were present in the original arrays

# Examples/Test Cases
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Data Structures
# - Two arrays. They are merged.

# Algorithms
# - Union them.

# Code

def merge(a, b)
  a.union(b)
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]