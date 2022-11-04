# Running Totals

# Input: an array of numbers
# Output: an array of same size but each modified to display running total

# Rules
# - The new array must have the same number of elements
# - Starting from 0, each new element adds to a running total
# - Empty array gives empty array

# Examples/Test Cases
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# Data Structures
# - Mapping or transforming an array

# Algorithms
# Method that takes an array and returns an array:
# - initialize 'total' = 0
# - map old array to each new val = running total + current val
#   - make sure to update the total itself in this process
# - return the mapped array

# Code

def running_total(arr)
  total = 0
  arr.map { |val| total += val }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Concluding Notes
# - pretty simple! I'm happy with it :)