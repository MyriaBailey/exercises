# Halvsies

# Input: An array
# Output: A nested array of two arrays, containing the first and second
#   halves of the original array, respectively.

# Rules
# - If the array contains an odd number of elements,
#     middle element should be placed in the first half's array
# - Empty array should return two nested empty arrays

# Examples/Test Cases
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Data Structures
# - Start with one array, containing any number of elements (even empty)
# - End with one array, containing two arrays, containing elements
# - If there are 5 elements, arr 1 contains idx 0-2, arr 2 contains 3-4

# Algorithms
# A method that takes an array
# - Determine how many elements are in the array (size)
#   - Determine midpoint x: size / 2
# - Initialize the nested array
#   - second array contains the last x numbers
#   - first array contains the first (size - x) numbers

# Code

def halvsies(arr)
  mid = arr.size / 2
  [arr.first(arr.size - mid), arr.last(mid)]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]