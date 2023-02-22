# Swap Case

# Input: A string
# Output: The same string, but with every letter's case swapped

# Rules
# - Only letters are modified, nothing else
# - No `swapcase` method

# Examples/Test Cases
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Data Structures
# - A string, with characters

# Algorithms
# A method that takes a string
# - for each character, map so that
#   - if lowercase letter, upcase
#   - if uppercase letter, downcase
#   - else, return char

# Code
def swapcase(str)
  str.chars.map do |char|
    if char.match?(/[a-z]/)
      char.upcase
    elsif char.match?(/[A-Z]/)
      char.downcase
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'