# Cute Angles

# Input: a floating point number representing an angle (0..360)
# Output: The angle in degrees, minutes, and seconds

# Rules
# - The numbers left of the decimal (degrees) remain the same
# - 1 degree is 60 minutes.
# - 1 minute is 60 seconds.
# - Results may slightly differ, but should be within a second or two
# - Formatting should use two digits with leading zeros when
#     formatting the minutes and seconds only (not the degrees)

# Examples/Test Cases
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data Structures
# - Numbers before the decimal are the degrees, as-is
# (x deg) * (60 min / 1 deg) * (60 sec / 1 min) = y seconds

# Algorithms
# A method that takes a float
# - Degrees = angle truncated (no decimal place)
# - Total Seconds = angle * 60 * 60
# - Total Minutes, and Seconds = total seconds divmod 60
# - Total Degrees, and minutes = Total Minutes divmod 60

# Code
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(angle)
  degrees = angle.truncate(0) % 360

  total_seconds = (angle * MINUTES_PER_DEGREE * SECONDS_PER_MINUTE).truncate(0)
  total_minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  minutes = total_minutes % MINUTES_PER_DEGREE

  p [degrees, minutes, seconds]
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

# Concluding Notes
# ...Just come back to this one later.