# Double Char (Part 2)

# Input: A string
# Output: A new string in which every CONSONANT is doubled

# Rules
# - Only consonants are doubled
# - Vowels (a,e,i,o,u), digits, punctuation, whitespace, etc should not be

# Examples/Test Cases
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# Data Structures
# - A set of valid characters (A-Z, a-z, minus a,e,i,o,u)
# - An array of characters from a string, transformed and rejoined

# Algorithms
# A method that takes a string
# - define a set of valid characters
#   - [a-zA-Z] and NOT [aeiou]
# - on an array of characters, map so that
#   - if valid char, then return char + char, else return char

# Code
def double_consonants(str)
  str.chars.map do |char|
    if char.match?(/[a-zA-Z]/) && !char.match?(/[aeiou]/)
      char + char
    else
      char
    end
  end.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""