# Array Average

# Input: an array of integers
# Output: returned average of all the numbers in the array

# Rules
# - The array will never be empty, and will ALWAYS be positive integers
# - Result should ALSO be an integer
#   - Use integer division: (a + b) / c = d

# Examples/Test Cases
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structures
# - Take an array of integers
# - Do math with each of the integers
# - Return a single integer

# Algorithms
# A method that takes an array of integers and returns a single integer
# - Find and store the length of the array (.size)
# - Find and store the total sum of the array elements (.sum)
# - Divide the sum by the length and return the result
# (all the above can be one-lined by skipping the value storage)

# Code

def average(nums)
  nums.sum / nums.size # add .to_f at the end here to convert to a float
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40