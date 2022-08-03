# Tip Calculator

# Input: Bill amount in dollars (float) and tip percentage (also float)
# Output: The amount tipped and the total amount spent (in dollars)

# Rules
# - Prompt for the bill in dollars
# - Prompt for the tip percentage as a whole percent
# - Calculate the amount tipped and the total amount as floats
# - Display rounded results ($30.0 seems acceptable though)

# Examples/Test Cases
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Data Structures
# - Working entirely with floats and percentage multiplication

# Algorithms
# - Prompt for the bill amount and store result
# - Prompt for the tip percentage and store result
# - Calculate the tip amount
#   - bill_amount * (tip_percentage * 0.01)
# - Calculate the bill total
#   - tip_amount + bill_amount
# - Display calculated results rounded off

# Code

puts "What is the bill?"
bill_amount = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = (bill_amount * (tip_percentage * 0.01)).round(2)
bill_total = (tip_amount + bill_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{bill_total}"

# Concluding Notes
# - Come back later once Kernal#format is better understood
# - Just using .round(2) keeps it from going too long but doesn't
#     lock it at two decimal places