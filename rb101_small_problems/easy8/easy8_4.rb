# Palindromic Substrings

# Input: A string
# Output: All palindromic substrings of the string

# Rules
# - Each substring consists of the same chars forwards/backwards
# - Case sensitive
# - Arranged in the same sequence as the substrings appear in string
# - Duplicate palindromes should be included multiple times
# - Can and should use previous substrings method
# - Consider ALL characters (not just letters) and case sensitive
# - Must be 2+ characters long (no single letters)

# Examples/Test Cases
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
  # 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# Data Structures
# - An array of substrings provided from previous method
# - Selecting elements that match the criteria

# Algorithms
# A method that takes a string
# - Obtain the array of substrings from previous method
# - select only the elements that are palindromes
#   - substring matches the same substring reversed,
#   - AND is at least 2 or more chars long
# - implicit return

# Copied Code
def substrings(str)
  result = []
  final_idx = str.length - 1
  0.upto(final_idx) do |starting_idx|
    starting_idx.upto(final_idx) do |current_idx|
      result << str[starting_idx..current_idx]
    end
  end
  result
end

# Code
def palindromes(str)
  substrings(str).select do |substring|
    substring == substring.reverse && substring.size >= 2
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]