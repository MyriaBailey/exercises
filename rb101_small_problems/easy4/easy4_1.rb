# Short Long Short

# Input: two strings
# Output: one, longer string

# Rules
# - determine the longest of two strings
# - return a string consisting of the short string, long one, and short again
# - Can assume strings will be of different lengths each time

# Examples/Test Cases
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Data Structures
# - two strings compared and then concatenated accordingly

# Algorithms
# A method that takes two strings and returns one string:
# - initialize 'result' that is str1 and str2 concatenated
# - if str1 is longer than str2, prepend str2
# - else: concat str1
# - return 'result'

# Code

def short_long_short(str1, str2)
  result = str1 + str2
  if str1.length > str2.length
    result.prepend(str2)
  else
    result.concat(str1)
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# Concluding Notes
# - feels pretty straightforward