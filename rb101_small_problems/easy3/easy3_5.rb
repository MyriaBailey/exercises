# Squaring an Argument

# Input: one number
# Output: returned square

# Rules
# - Using the previous exercise's multiply method, calculate the square
#     of an argument

# Examples/Test Cases
# square(5) == 25
# square(-8) == 64

# Algorithms
# Previous method:
#   Define method w/ two parameters `num1` and `num2`
#   - multiply and return implicitly
#   end method
# New method:
#   Define method w/ one parameter `num`
#   - call multiply method w/ num as both arguments
#   - implicit return
#   end method

# Code

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts (square(5) == 25)
puts (square(-8) == 64)
