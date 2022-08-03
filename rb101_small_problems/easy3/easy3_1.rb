# Searching 101

# Input: 6 separate integers
# Output: Describes if the 6th number appears amongst the other 5 numbers

# Rules
# - Prompt for a number 6 times
# - Test to see if the 6th number appears in the prior set
#   - Likely only testing if == and not 'in' a larger number

# Examples/Test Cases
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# Data Structures
# Adding ints into an array
# Testing if an int is inside an array
# - Conditional statement for if this is true or not

# Algorithms
# Prompts
# - Create empty array `arr`
# - Prompt for a number 5 times (shorhand w/ a printer method)
#   - append input (converted to an int) to `arr`
# - Prompt for last number
#   - Store as `last_num`
# Display
# - if `arr` includes `last_num`
#   - Print that it does appear
# - else print that it does not

# Code

def prompt(num)
  puts "==> Enter the #{num} number:"
end

# Prompting
arr = []

%w(1st 2nd 3rd 4th 5th).each do |number|
  prompt(number)
  arr << gets.chomp.to_i
end

prompt('last')
last_num = gets.chomp.to_i

# Displaying
if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end

# Concluding notes
# - Very nice simply feeding an array of values to one method
#     instead of writing the method out that many times