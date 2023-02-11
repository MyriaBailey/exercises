# After Midnight (Part 2)

# Input: A time of day in 24-hr clock hh:mm format
# Output: Number of minutes before, or after midnight (2 dif methods)

# Rules
# - Two methods (after_midnight and before_midnight)
#   - after = how long has passed, before = how long until
# - Both take a time of day in 24 hr format (hh:mm) as a string
# - Returns either the number of minutes before, or after midnight
# - Both methods should return a val in the range 0..1439
# - No Date or Time methods
# - Yes 24:00 isn't a valid time in 24 hour format, but humor it anyway

# Examples/Test Cases
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Data Structures
# - String received is in hh:mm format
# - After removing the hh and mm from the string and -> int, 
#   - hh * 60 + mm = total minutes AFTER midnight (positive)
#   - % by 1440 to ensure it's only a day's time!
#   - 1440 - total minutes = BEFORE midnight (negative)

# Algorithms
# - Method taking a string and returning minutes since midnight
#   - hours = first two chrs -> to int
#   - minutes = last two chrs -> to int
#   - total_minutes = ((hours * 60) + minutes) % 1440
# - Method taking a string and returning minutes until midnight
#   - (1440 - after_midnight(string)) % 1440

# Code

def after_midnight(clock)
  hours = clock[0, 2].to_i
  minutes = clock[-2, 2].to_i

  ((hours * 60) + minutes) % 1440
end

def before_midnight(clock)
  (1440 - after_midnight(clock)) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Concluding Notes
# - Could have used `.split(':')` to make an arr of the hh and mm
#     and then call `.map(&:to_i)` to convert them both to ints
# - Further exploration: use Date and Time classes perhaps?