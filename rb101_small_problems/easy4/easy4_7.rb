# Convert a String to a Number!

# Input: a string of numbers
# Output: a corresponding integer

# Rules
# - Must convert the string of numeric characters to an actual integer
# - WITHOUT using .to_i or similar such
# - Assume no leading + or - signs yet, and all numeric characters only

# Examples/Test Cases
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Data Structures
# - A method that converts singular characters to their respective int value
#   - control expression for all 0-9 characters
# - a "running total" of the final int result
# - for each character of the string... 

# Algorithms
# A method 'what_num' that takes a single character
# - A case expression to determine what integer it is
# A method 'string_to_integer' that takes a string of characters
# - initialize 'converted_val' = 0
# - initialize index variable 'idx' = 0
# - on the reversed string, for each character (using the index),
#   - plug current character into 'what_num' to convert to int
#   - the converted value += what_num(current value) * (10 ** current index)
# - return converted value

# Code

def what_num(char)
  case char
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

def string_to_integer(str)
  converted_val = 0
  idx = 0

  str.reverse.each_char do |char|
    converted_val += what_num(char) * (10 ** idx)
    idx += 1
  end

  converted_val
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Concluding Notes
# - Struggled a bit with this one because of the lack of each_with_index
# - Doesn't feel as clean as I would like at all. 
# - Wanting to come back to this later with better understanding.