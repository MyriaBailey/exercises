# Does My List Include This?

# Input: An array, and a search value
# Output: true or false depending on if the value is in the array

# Rules
# - Take an array and a search value as arguments
# - Return true of the search value is in the array, false otherwise
# - May not use `Array#include?` in the solution

# Examples/Test Cases
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# Data Structures
# - An array

# Algorithms
# A method that takes an array, and a search value
# - return true if any element in the array is == to the search value

# Code
def include?(arr, search)
  arr.any? {|element| element == search }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false