# Leap Years (Part 1)

# Input: a year as an integer
# Output: a boolean value for if it's a leap year or not

# Rules: 
# - Return true if the year given to the method is a leap year
# - A leap year is any year evenly divisible by 4, UNLESS
#   - If the year is evenly divisible by 100, it is ONLY a leap year if
#   - it is evenly divisible by 400
# - assume this rule is good for any year greater than 0

# Examples/Test Cases
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# Data Structures
# - a control expression using modulus operator to check what it's divisible by

# Algorithms
# A method that takes an integer 'year' and returns a bool:
# - If the year is evenly divisible by 100:
#   - If evenly divisible by 400; true
#   - Else; false
# - Elsif the year is evenly divisible by 4; true
# - Else; false

# Code

def leap_year?(year)
  if year % 100 == 0
    if year % 400 == 0; true
    else; false
    end
  elsif year % 4 == 0; true
  else; false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# Concluding Notes
# Just straightforward logic flow practice