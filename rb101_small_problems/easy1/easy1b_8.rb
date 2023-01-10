# Reverse the Digits in a Number

# Input: a positive integer
# Output: the same integer but with its digits reversed

# Rules
# - a method called reversed_number
# - takes a positive integer
# - method returns the integer with its digits reversed
# - don't worry about arguments with leading zeros
#   - similarly, the result won't have leading zeros

# Examples/Test cases
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# Data Structures
# - 

# Algorithms
# A method that takes a positive integer
# - convert int to string (easily manipulated)
# - reverse the string
# - convert back to int (implicit return?)

# Code

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)

# Concluding Notes
# - Unsure if this was the intended method, but it works well?