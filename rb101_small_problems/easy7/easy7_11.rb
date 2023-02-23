# How Many

# Input: An array
# Output: a printed count of the number of occurences of each element

# Rules
# - Receive an array of elements, likely containing duplicates
# - print the contents of a hash, where each key is an element of the arr
#     and each val is the running count of how many times it occurs
# Words are case-sensitive

# Examples/Test Cases
# vehicles = [
  # 'car', 'car', 'truck', 'car', 'SUV', 'truck',
  # 'motorcycle', 'motorcycle', 'car', 'truck'
# ]
# 
# count_occurrences(vehicles)

# Expected Output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Structures
# - A hash with values initialized to 0
# - An array that's iterated over, adding to the hash

# Algorithms
# A method that takes an array
# - initialize an empty hash such that new keys have value 0
# - for each element in the array...
#   - that key's value in the hash is += 1
# - print results

# Code
def count_occurrences(arr)
  occurences = Hash.new(0)
  arr.each {|element| occurences[element] += 1 }
  occurences.each {|element, count| puts "#{element} => #{count}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)