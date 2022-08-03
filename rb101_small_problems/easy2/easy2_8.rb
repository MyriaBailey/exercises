# Sum or Product of Consecutive Integers

# Input: an integer, and a string character
# Output: Either the sum or product of integers in the given range

# Rules
# - Must take an integer greater than zero
#   - Can assume user follows directions
# - Must take either an 's' or a 'p'
# - Based on the chosen answer, compute either the sum or the product
#   - The range is from 1 to chosen int (inclusive)

# Examples/Test Cases
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Data Structures
# an int, char, and range of numbers acted upon for each number

# Algorithms
# Prompts
# - Ask for an int above 0 (convert + store as `num``)
# - Ask for 's' or 'p' (store as `operation`)
# Calculations
# - create empty `result` var
# - if operation is 's'
#   - for each in the range of 1 to num inclusive: add to num
#   - print result
# - else
#   - set `result` to 1
#   - for each in the range of 1 to num inclusive: multiply with/store num
#   - print result
# - end


# Code

# Prompts
puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

# Calculations
result = 0

if operation == 's'
  (1..num).each { |idx| result += idx }
  puts "The sum of the integers between 1 and #{num} is #{result}."
else
  result = 1
  (1..num).each { |idx| result *= idx }
  puts "The product of the integers between 1 and #{num} is #{result}."
end
