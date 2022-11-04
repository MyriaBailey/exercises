# Leap Years (Part 2)

# Input: a year as an int
# Output: a bool value representing if it is a leap year or not

# Rules
# - Same as before, except using two different calendars now
# - Prior to 1752, ANY year divisible by 4 was a leap year
# - From 1752 onward, the "divisible by 400" rule was implemented

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
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# Data Structures
# - Same as before, with an additional clause added for the calendar split

# Algorithms
# - Same as before, but requiring the 'evenly divisible by 100' statement
#   to include that it is AFTER 1751 (so 1752 onwards)

def leap_year?(year)
  if year % 100 == 0 && year > 1751
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true