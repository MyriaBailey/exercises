# Convert a Signed Number to a String

# Input: an integer
# Output: a string representing the same int number

# Rules
# - Convert an integer into a string representing the same number
# - Cannot use any standard conversion methods like .to_s
# - The integer MAY OR MAY NOT be signed
# - The string always includes the sign, regardless of int inclusion

# Examples/Test Cases
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# Data Structures
# - Case statements to convert single int digits to single char str
# - Array of each digit individually


# - A method to convert each int 0-9 to its string version
#   - Using case statements
# - A method to analyze the int char by char and return its str equiv.
#   - initialize result string
#   - determine if pos, neg, or zero, and add appropriate sign to str
#   - separate the int by digits
#   - For each digit, convert to str, and concat with result string
#   - return result string

# Code

def int_to_char(num)
  case num
  when 0 then '0'
  when 1 then '1'
  when 2 then '2'
  when 3 then '3'
  when 4 then '4'
  when 5 then '5'
  when 6 then '6'
  when 7 then '7'
  when 8 then '8'
  when 9 then '9'
  end
end

def signed_integer_to_string(num)
  result = ''

  if num < 0
    num *= -1
    result << '-'
  elsif num > 0
    result << '+'
  end

  num.digits.reverse.each { |digit| result << int_to_char(digit) }
  result
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# Concluding Notes
# - An easy tweak, just required knowing .digits method only works if pos.