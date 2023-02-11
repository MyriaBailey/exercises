# After Midnight (Part 1)

# Input: A positive or negative integer representing number of minutes
# Output: A string representing 24-hr hh:mm formatted time of day

# Rules
# - If the number of minutes is positive, the time is after midnight.
# - If it's negative, it's before midnight
# - Final result is a method
# - When given a number of minutes, return the time of day as a string
#   - 24-hr format, hh:mm
# - Should work with any integer input
# - No Date or Time class methods
# - Ignore Daylight Savings/Standard Time/other complications

# Examples/Test Cases
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Data Structures
# Valid hours are 00 - 23
# Valid minutes are 00 - 59
# Minutes % 1440 will return only a day's worth of time
# Minutes % 60 will return the remainder of minutes
# Minutes / 60 will return number of hours rounded down
# Note: a negative integer using % will return the desired reversed time

# Algorithms
# A method that takes an integer representing a number of minutes
# - Determine how many units of time are applicable
#   - Using % obtain only 1 day's worth of minutes
#   - From that, calculate the hours and minutes in integer format
#     - todays minutes / or % by 60, respectively
# - Convert hours/minutes into string
# - format to be correct # of digits (prepend 0 if length == 1)
# - Return final string result

# Code
def time_of_day(total_minutes)
  todays_minutes = total_minutes % 1440

  hours = (todays_minutes / 60).to_s
  minutes = (todays_minutes % 60).to_s

  hours.prepend('0') if hours.length == 1
  minutes.prepend('0') if minutes.length == 1

  "#{hours}:#{minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Concluding Notes
# - Could have simplified the hours/minutes using the divmod method
# - Didn't need to convert to a string as there is a format method instead
# - Probably should not have used the % here for negative numbers,
#     but it works well so?
# - May expand later to use Date and Time classes, and include day of week
#   - Need to be more familiar with how to best use those though...