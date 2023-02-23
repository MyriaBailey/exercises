# Multiply All Pairs

# Input: two arrays of numbers
# Output: a new array of the product of every pair of numbers possible
#   between the elements of the two arrays

# Rules
# - No duplications (ie, arr1[0] * arr2[0] counts, but NOT the vice versa)
# - Neither argument is empty
# - Each pair is one number from arr1 and one number from arr2
#   - so no arr1[0] * arr1[1]

# Examples/Test Cases
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Data Structures
# - The product array of two arrays
#     being a large array of nested sub-arrays, containing each pair
# - Each pair should be multiplied

# Algorithms
# A method that takes two arrays of numbers
# - find the product of both arrays (makes nested arr)
# - map each sub-array to be the product of its contents

# Code
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|sub_arr| sub_arr.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]