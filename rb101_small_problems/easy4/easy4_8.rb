# Convert a String to a Signed Number!

# Input: a string of numbers
# Output: a corresponding integer

# Rules
# - Must convert the string of numeric characters to an actual integer
# - WITHOUT using .to_i or similar such
# - There MAY OR MAY NOT be a positive or negative sign or neither!
#   - Assume positive number if no sign

# Examples/Test Cases
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

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
#   - if it's a negative sign, multiply converted val by -1
#   - elsif it's NOT '+' then,
#     - plug current character into 'what_num' to convert to int
#     - the converted value += what_num(current value) * (10 ** current index)
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

def string_to_signed_integer(str)
  converted_val = 0
  idx = 0

  str.reverse.each_char do |char|
    if char == '-'
      converted_val *= -1
    elsif char != '+'
      converted_val += what_num(char) * (10 ** idx)
      idx += 1
    end
  end

  converted_val
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Concluding Notes
# - While still struggling with the same issue as last time
#   (regarding no each_with_index on string chars),
#   adding the clause for signed numbers was quite easy.