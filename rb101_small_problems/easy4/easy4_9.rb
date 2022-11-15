# Convert a Number to a String

# Input: an integer
# Output: a string representing the same int number

# Rules
# - Convert a positive integer into a string representing the same number
# - Cannot use any standard conversion methods like .to_s

# Examples/Test Cases
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Data Structures
# - Case statements to convert single int digits to single char str
# - Array of each digit individually


# - A method to convert each int 0-9 to its string version
#   - Using case statements
# - A method to analyze the int char by char and return its str equiv.
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

def integer_to_string(num)
  result = ''
  num.digits.reverse.each { |digit| result << int_to_char(digit) }
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# Concluding Notes
# - Much easier than the previous converting str to int
# - No need for an index here as concating strings is easy
# - Curious about possibilities regarding integer concatination??
#   - Will think about for later