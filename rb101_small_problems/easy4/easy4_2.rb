# What Century is That?

# Input: a year as an integer
# Output: the centry as a number with the appropriate 2 letter ending (string)

# Rules
# - Takes an integer (any number of digits not just 4)
# - Returns a string (such as '21st')
# - New centuries begin in years that end with 01
#   - The years 1901 - 2000 comprise the 20th century
# 1st, 2nd, 3rd, 4th, 5th, ... 11th, 12th, 13th, ... 20th, 21st, 22nd,
# ... 100th, 101st,

# Examples/Test Cases
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# Data Structures
# - A method that takes an integer and returns a string.
# - A mathmatical means of determining the numerical century
# - A means of determining the appropriate suffix for a number

# Algorithms
# A method 'century' that takes an integer and returns a string:
# - century_number = ((year + 99) / 100) converted to string
# - A method 'what_suffix' to determine the suffix
#   - if century_number ends with '11' or '12' or '13' return 'th'
#   - elsif ends with '1' return 'st'
#   - elsif ends with '2' return 'nd'
#   - elsif ends with '3' return 'rd'
#   - else return 'th'
# - return century_number + suffix

# Code

def century(year)
  century_number = ((year + 99) / 100).to_s
  century_number + what_suffix(century_number)
end

def what_suffix(num)
  if num.end_with?('11', '12', '13'); 'th'
  elsif num.end_with?('1'); 'st'
  elsif num.end_with?('2'); 'nd'
  elsif num.end_with?('3'); 'rd'
  else; 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Concluding Notes
# - Can one-line each if/then statement in a longer logic flow with `;`