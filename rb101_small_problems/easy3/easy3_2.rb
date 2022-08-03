# Arithmetic Integer

# Input: two positive integers
# Output: Several lines of resulting arithmetic with those numbers

# Rules:
# - Prompt for two positive integers
#   - Assume valid inputs
# - Display many resulting operations
#   - Addition, subtraction, product, quotient, remainder, and power
#   - PURELY INTEGER MATH, even for quotients

# Examples/Test Cases
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# Data Structures
# Entirely integer arithmetic

# Algorithms
# Prompts
# - Prompt for first number and store as `num1` (convert to int)
# - Prompt for second number and store as `num2` (convert to int)
# Calculate results
# - Create an array for each operator
# - Both print results and calculate for each operator
#   - Operators used as both strings and operators

# Code

puts "==> Enter the first number:"
num1 = gets.chomp.to_i
puts "==> Enter the second number:"
num2 = gets.chomp.to_i

[:+, :-, :*, :/, :%, :**].each do |operator|
  puts "==> #{num1} #{operator.to_s} #{num2} = " + 
  num1.public_send(operator, num2).to_s
end

# Concluding notes
# - The `public_send` method is handy for invoking a method (in this
#     case an operator) that's stored as a symbol
# - May be a bit too fancy for the current scope, however?
# - Compact but messy, might want to expand for readiblity purposes