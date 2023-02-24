# Sum of Sums

# Input: An array of numbers
# Output: The sum of the sums

# Rules
# - Return the sum of the sums of each leading subsequence for the array
# - Assume the array always contains at least one number

# Examples/Test Cases
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data Structures
# - An array of numbers
# - Each value appears in the sum a diminishing number of times
#     the later it appears in the array
# - ie, in a 3 element array the first element appears 3 times
#     while the last element appears only 1 time
# - number of times counted in the sum is equivalent to the
#     reverse of its index, plus one

# Algorithms
# A method that takes an array
# - Initialize a sum
# - Reverse the array, and for each element with index,
#   - add to the sum the multiple of that element * (idx + 1)
# - Return the sum

# Code
def sum_of_sums(arr)
  sum = 0
  arr.reverse.each_with_index {|num, idx| sum += num * (idx + 1) }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35