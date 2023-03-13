# Double Doubles

# Input: A number
# Output: Return of 2x the number, or the number as-is if a double num

# Rules
# - A double number is a number with an EVEN NUMBER OF DIGITS.
#   - Left side digits == right side digits
#   - This means EQUAL and not MIRROR (aka NOT a palindrome)
# - Return 2 times the num provided as an argument, UNLESS it is
#       a double number. Then return as-is.
# - Presumably taking an integer

# Examples/Test Cases
# Double numbers: 44, 3333, 103103, 7676
# NOT double numbers: 444 334433, 107

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# Data Structures
# - An array of digits

# Algorithms
# A method that takes a number,
# - Determine if it is a double number:
#   - initialize an array of digits
#     - if the num digits is ODD, skip
#     - if EVEN, find mid point
#   - for the first 1/2 size digits, is == to last x digits?
#     - if yes, return as-is, else skip
# - double num if skipped, as-is if not

# Code

def twice(num)
  digits = num.digits
  size = digits.size

  dubnum = digits[0, size / 2] == digits[(size / 2)..-1] && size.even?
  dubnum ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10