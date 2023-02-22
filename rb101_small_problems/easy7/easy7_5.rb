# Staggered Caps (Part 1)

# Input: A string
# Output: New string with every other character capitalized

# Rules
# - First character is capitalized, next is downcased, and so on
# - Non-letter chars should not be changed, but still count as chars
#     for switching case purposes

# Examples/Test Cases
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structures
# - A string, with characters, iterated by index

# Algorithms
# A method that takes a string
# - for each char of the string, map so that
#   - if the index is odd, upcase
#   - if the index is even, downcase

# Code
def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, idx|
    new_str << if idx.even?
      char.upcase
    else
      char.downcase
    end
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'