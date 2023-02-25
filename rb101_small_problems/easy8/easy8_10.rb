# Array Average

# Input: An array containing integers
# Output: The average of all numbers in the array

# Rules
# - The array will never be empty
# - The numbers will always be positive integers
# - Result should also be an integer
# - Don't use Array#sum

# Examples/Test Cases
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structures
# - An array of integers, iterated over

# Algorithms
# A method that takes an array
# - inject :+ to sum everything in the array and return as an integer
# - divide by number of elements in the array

# Code
def average(arr)
  arr.inject(:+) / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40