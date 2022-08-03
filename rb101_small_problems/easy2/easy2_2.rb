# How Big is the Room?

# Input: length and width in meters
# Output: area of the room in both sq meters and sq feet

# Rules
# - Prompt the user for length in meters, and then width in meters
# - No input validation necessary
# - Print resulting area in BOTH sq meters and sq feet
# - Result is a float
#   - How many significant digits? (do we care?)

# Examples/Test Cases
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Data Structures
# - Constant: conversion rate float between sq meters and sq feet
# - Take two numbers (int or float)
# - display as float

# Algorithms
# - Prompt for length in meters, store result
# - Prompt for width in meters, store result

# - Calculate area in sq meters, store result
#   - length * width
# - Calculate area in sq feet, store result
#   - area_meters * SQ_METER_FEET_CONVERSION_RATE

# - Print resulting area in sq meters and sq feet

# Code

SQ_METER_FEET_CONVERSION_RATE = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sq_meters = length * width
area_sq_feet = area_sq_meters * SQ_METER_FEET_CONVERSION_RATE

puts "The area of the room is #{area_sq_meters} " + 
     "square meters (#{area_sq_feet} square feet)"

# Concluding Notes
# Use + to break up long messages with puts
# Should use .round(2) to make sure the numbers don't trail too long
# Further exploration asks to display results in even smaller numbers,
#   perhaps another time