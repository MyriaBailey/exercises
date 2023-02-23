# Multiply List

# Input: Two arrays, both containing numbers
# Output: An array of the products of each pair of numbers w/ same index

# Rules
# - Assume arguments contain same number of elements

# Examples/Test Cases
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Data Structures
# - Two arrays, with the same number of elements

# Algorithms
# - Interleave the two arrays together,
#   - Map so that each sub-array is now
#       the value of idx 0 * the value of idx 1

# Code
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|sub_arr| sub_arr[0] * sub_arr[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]