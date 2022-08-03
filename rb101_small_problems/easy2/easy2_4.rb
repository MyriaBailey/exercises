# When will I Retire?

# Input: Current age (int) and desired retirement age (int)
# Output: The current year, the projected year, and how many years of work

# Rules:
# - Prompt for the age in years
#   - Assume int with no units attached?
# - Prompt for the projected age to retire at
# - State the current year, and the year of retirement
# - State how many years of work to go
# - No decimals, months, or anything, just solid integers
# - The Time class is recommended (for the current year presumably)

# Examples/Test Cases
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Data Structures
# - Ints and instance of Time

# Algorithms
# Prompts
# - Prompt for the age in years
#   - Convert to int and store as age
# - Prompt for the age to retire at
#   - Convert to int and store as retirement_age
# Calculations
# - Calculate and store age difference as age_difference
#   - retirement_age - age
# - Store current year using Time class as current_year
# - Calculate and store retirement year
#   - current_year + age_difference
# Display
# - Print current year and the retirement_year
# - Print age_difference

# Code

# Prompts
puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

# Calculations
age_difference = retirement_age - age
current_year = Time.new.year
retirement_year = current_year + age_difference

# Display
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{age_difference} years of work to go!"