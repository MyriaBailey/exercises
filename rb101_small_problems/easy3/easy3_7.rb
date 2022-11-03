# Odd Lists

# Input: An array containing any number of values.
# Output: An array containing every *other* element of that array.

# Rules
# - The code should be a method called 'oddities'
#   - This method takes a single array and outputs a modified version.
# - The array can be any series of values (strings, ints, etc)
# - The array can be empty, and can hold repeating values
# - By 'every other' element, this means the 1st, 3rd, 5th, and so on
# - This only counts by index placement, not unique values

# Examples/Test Cases
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Data Structures
# - The main code is in a method that takes an array
# - An array is taken and an array is returned

# Algorithms
# A method that takes an array
# - initialize a new array 'selection'
# - for each even index, add the value to the 'selection' array
# - Return 'selection' array

# Code

def oddities(arr)
  selection = []
  arr.each_with_index {|val, idx| selection << val if idx.even?}
  return selection
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Concluding notes
# - This should likely be able to be a one-liner method,
#   - Wanted to run the 'select' method, but it only takes the element
# - This works, but I'd like to simplify if possible.