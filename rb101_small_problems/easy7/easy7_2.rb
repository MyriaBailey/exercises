# Lettercase Counter

# Input: A string
# Output: a hash containing 3 entries, representing number of characters
#   in the string that are lowercase, uppercase, or neither

# Rules
# - The hash keys are symbols, being lowercase, uppercase, and neither
# - spaces, numbers, and other characters all count as "neither"

# Examples/Test Cases
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Structures
# - A hash of 3 key/value pairs
#   - keys are symbols
#   - values are ints

# Algorithms
# A method that takes a string
# - initialize a hash with each key's value set to 0
# - for each character of the string...
#   - if lowercase, +1 to the lowercase key's val
#   - if uppercase, +1 to the uppercase key's val
#   - else, +1 to the neither key's val
# - return hash

# Code
def letter_case_count(str)
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |char|
    if char.match?(/[a-z]/)
      count[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end
  count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Concluding Notes
# - Could have ran `count` on a saved arr of chars instead