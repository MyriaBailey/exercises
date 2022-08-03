# Sum of Digits

# Input: a positive integer
# Output: returns an integer (being a sum of its digits)

# Rules
# - Takes a positive integer
# - Even if underscores are used, they do not count in the integer storage
# - Returns an integer summing each of its digits
# - Optional challenge: No basic looping constructs
#   - (while, until, loop, and each)

# Examples/Test Cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# Data Structures
# - Takes an integer
# - Convert to string, split into array of chars
#   - Convert chars back into ints to calculate sum
# - Return an integer

# Algorithms
# A method that takes an integer and returns an integer
# - Initialize a sum variable
#
# - Convert the given integer to a string
# - Split the string by each char into an array
# - Find the size of the array
#
# - For [size] times, 
#   - Remove an element from the array,
#   - Convert it back to an int,
#   - Add it to a sum variable
#
# OR
#
# - Map the array to int form
# - Sum the array elements

# Code

def sum(num)
  num.to_s.split('').map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Concluding Notes
# Can replace `.split('')` with `.chars`
# Solution worked with `.sum` but should compare with `.reduce(:+)`