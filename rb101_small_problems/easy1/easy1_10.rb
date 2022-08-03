# What's my Bonus?

# Input: positive integer and a boolean
# Output: calculated bonus for a given salary

# Rules
# - First integer is positive only
# - If the boolean is true, the bonus should be half the given integer
# - If the boolean is false, the bonus should be 0
# - Should be contained in a method named calculate_bonus

# Examples/Test Cases
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# Data Structures
# - Takes an integer and a boolean
# - If applicable divide by two (as a float and convert to int again)
# - Return an integer

# Algorithms
# A method that takes an integer and a boolean and returns an integer
# - If the boolean is true:
#   - (Divide the integer by two) convert to integer and implicitly return
# - If the boolean is false:
#   - Return 0


def calculate_bonus(salary, bonus)
  if bonus == true
    (salary / 2.0).to_i
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Concluding Notes
# - Could have used the ternary operator instead
#   - Would result in
#       bonus ? (salary / 2) : 0
# - Didn't need to worry about float/integer conversion apparently