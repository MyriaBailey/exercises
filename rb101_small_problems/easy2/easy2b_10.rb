# Always Return Negative

# Input: a number
# Output: the same number but negative if it wasn't before

# Rules
# - if the number is positive, return it negative
# - if the number is negative, return it as-is
# - if the number is 0, also return it as-is

# Examples/Test Cases
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# Data Structures
# - an if/then control expression
# - a stored numerical value tested on and modified

# Algorithms
# A method that takes a number
# - if the number is greater than zero: return (num * -1)
# - else: return num

# Code

def negative(num)
  if num > 0
    num * -1
  else
    num
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# Concluding Notes
# - Writing it as a ternary expression would be simpler
#   - such would be: `number > 0 ? -number : number`
# - Alternative would be `-number.abs` but may not be 
#     as easily understood or faster