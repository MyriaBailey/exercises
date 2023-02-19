# Reversed Arrays (Part 2)

# Input: An array
# Output: A new array with the order of the elements reversed

# Rules
# - Array may contain any number of elements, including empty
# - Do not modify the original list
# - Cannot use previous method, and still no `reverse` method

# Examples/Test Cases
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true
# 
# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# Data Structures
# - Non-destructively move elements from the end of the arr to the start

# Algorithms
# A method that takes an array
# - Initialize an empty arr
# - for each element on the original arr
#   - prepend it to the new array
# - Return the new array

# Code

def reverse(arr)
  new_arr = []
  arr.each {|element| new_arr.prepend(element) }
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true