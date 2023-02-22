# Combine Two Lists

# Input: Two arrays passed in as arguments
# Output: An array that contains all elements of both, interleaved

# Rules
# - Assume both input arrays are non-empty
# - Assume same number of elements
# - Final array will start with the first element of the first array,
#     then the first element of the second array,
#     then the second element of the first array

# Examples/Test Cases
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data Structures
# Two arrays, with their elements added to a new array

# Algorithms
# A method that takes two arrays
# - initialize empty array
# - for each element of the first, with index
#   - Add the current element, and the same idx value from the second arr
#     to the new array
# - return the new array

# Code
def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |element, idx|
    new_arr << element
    new_arr << arr2[idx]
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Concluding Notes
# - You can stack multiple << in a row!
# - ie: `new_arr << element << arr2[idx]`
# - Can simplify using
#   `arr1.zip(arr2).flatten`