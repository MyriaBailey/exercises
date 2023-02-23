# Staggered Caps (Part 2)

# Input: A string
# Output: A modified string so every other LETTER is upcase/downcase

# Rules
# - Same as last, however it ignores non-alphabetic chars when
#     determining uppercase or lowercase
# - Still return the non-alphabetic chars, they just don't count for
#     toggling case

# Examples/Test Cases
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Data Structures
# - A string, converted to an array of characters
# - A means of keeping track of up/down casing

# Algorithms
# A method that takes a string
# - Initialize variable upcase = false
# - For each character in the string, map so that:
#   - if it's a letter,
#     - toggle upcase
#     - upcase true? capitalize if yes, downcase if no
#   - else, return char

# Code
def staggered_case(str, count_all = false)
  upcase_status = false
  str.chars.map do |char|
    if char =~ /[A-Za-z]/
      upcase_status = !upcase_status
      upcase_status ? char.upcase : char.downcase
    else
      upcase_status = !upcase_status if count_all
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'