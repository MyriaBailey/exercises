# Clean Up The Words

# Input: A string with non-alphabetic characters mixed in
# Output: ONLY lowercase letters and spaces

# Rules
# - Assume all lowercase words and various non-alphabetic characters
# - Replace all the non-alphabetic characters with spaces
# - NO consecutive spaces, however

# Examples/Test Cases
# cleanup("---what's my +*& line?") == ' what s my line '

# Data Structures
# - A string, split into an array by word boundaries

# Algorithms
# A method that takes a string
# - Split into an array by word boundaries (regex \b)
# - map the array so IF it contains letters. return as-is.
#   - ELSE return ' '

# Code

def cleanup(words)
  clean = words.split(/\b/).map do |word|
    if word.match?(/[a-z]/)
      word
    else
      ' '
    end
  end
  clean.join('')
end

p cleanup("---what's my +*& line?") == ' what s my line '

# Concluding Notes
# - Was already looking at squeeze but didn't realize it could be limited
#     to just ' ' and not ALL consecutive chars.
# - Also could have simplified things with different regex and gsub
# - A little messy of a middle path, but it does work!
#     just. could be simpler.