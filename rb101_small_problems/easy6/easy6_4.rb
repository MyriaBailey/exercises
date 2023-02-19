# Reversed Arrays (Part 1)

# Input: An array
# Output: The EXACT SAME array object, mutated to have its element
#   order reversed.

# Rules
# - Take an array (any number of arguments, empty even)
# - Mutate the exact same object and return it
#   - the object ID should be identical
# - May NOT use `Array#reverse` or `Array#reverse!`

# Examples/Test Cases
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true
# 
# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true
# 
# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true
# 
# list = []
# reverse!(list) == [] # true
# list == [] # true

# Data Structures
# The same array, with order of elements reversed

# Algorithms
# A method that takes an array
# - create a copy of the array
# - destructively map each element of the original array
#   - new value should equal the last (popped) value of the duped arr

# Code
def reverse!(arr)
  duped_arr = arr.dup
  arr.map! {|val| val = duped_arr.pop }
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true