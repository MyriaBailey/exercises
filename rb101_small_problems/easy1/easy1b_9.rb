# Get Middle Character(s)

# Input: A non-empty string
# Output: The middle 1-2 characters of the string

# Rules
# - A method called center_of
# - Assume string is non-empty
# - If it is odd length, return 1 character
# - If it is even length, return 2 characters

# Examples/Test Cases
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# Data Structures
# - Searching string by index, midpoint determined by string length

# Algorithms
# A method that takes a non-empty string
# - determine string length
# - save midpoint as length / 2

#   - if length is odd:
#     - return the value of string index [midpoint]
#   - if length is even:
#     - return the concated string of index [midpoint - 1] + [midpoint]

# Code

def center_of(str)
  length = str.length
  midpoint = length / 2

  if length.odd?
    str[midpoint]
  elsif length.even?
    "#{str[midpoint - 1]}#{str[midpoint]}"
  end
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')

# Concluding Notes
# - Need to focus more on getting the right ranges first try
#   (did midpoint and midpoint+1 first instead of a -1)