# Exclusive Or

# Input: two arguments (that will evaluate to truthy/falsy)
# Output: boolean true or false.

# Rules
# - Write a function named `xor`
#   - Takes two arguments
#   - Should exactly ONE argument be truthy (and the other falsy),
#     - return true, else return false

# Examples/Test cases
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# Data Structures
# - Write a function with two arguments
#   - arguments should be truthy or falsy
# - Function evaluates using a conditional statement
# - Return a boolean value

# Algorithms
# A method that takes two arguments (val1, val2)
# - If val1 is truthy:
#   - Return true if val2 is falsy
# - else (aka val1 is falsy)
#   - Return true if val2 is truthy
# - end
# - Return false (only happens if the above does not return `true` early)

# Code

def xor?(val1, val2)
  if val1 == true
    return true if val2 == false
  else
    return true if val2 == true
  end

  return false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Concluding thoughts
# - This works, but there is literally already an operator for this.
# - This more just shows how to do it without the operator, but,
# - With the operator it'd basically just be as simple as:
# val1 ^ val2
# - Which then evaluates to a boolean, which can be implicitly returned.