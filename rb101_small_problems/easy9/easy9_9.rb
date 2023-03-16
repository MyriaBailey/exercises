=begin
Group Anagrams

Rules
Input: An array of words
Output: A print of each present anagram of those words grouped together

- The printed output should be separate arrays of strings

Examples/Test Cases
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Data Structures
- An array of strings
- Several printed arrays of strings

Algorithms
A method that takes an array of strings
- Make a cloned array of words
- Until the cloned array is empty:
  - print current list = selection of words anagrams of first clone item
  - remove items of current list from the cloned array
=end

def group_anagrams(list)
  until list.size == 0
    group = list.select {|word| list[0].chars.sort == word.chars.sort }
    group.each {|word| list.delete(word) }
    p group
  end
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

group_anagrams(words)

# Concluding Notes
# - While I'm mostly happy with this, may not be the most efficient
#   due to the repeated `.chars.sort` method calls many many times
# - May be more efficient to use the hash key method instead