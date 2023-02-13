# ddaaiillyy ddoouubbllee

# Input: Take a string
# Output: Return a new string with all duplicate consecutive characters
#   collapsed into a single character.

# Rules
# - No `squeeze` or `squeeze!`
# - Each consecutive character should be reduced to only one of that char
#   - CONSECUTIVE characters though. separated letters are fine

# Examples/Test Cases
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# Data Structures
# - A string of characters -> an array
# - storage of the previous character (initialized to '')
#   - or accessing the last character of a created string

# Algorithms
# - create a clean, empty string
# - for each char of the string, check if it matches the last char of the
#     new string, and if NOT, add it to the new string
# - return cleaned string

# Code

def crunch(str)
  cleaned = ''
  str.chars.each {|char| cleaned << char if !cleaned.end_with?(char) }
  cleaned
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''