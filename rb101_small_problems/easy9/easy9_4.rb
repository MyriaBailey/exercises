=begin
How Long Are You?

Input: A string
Output: An array containing every word, with a space and word length

Rules
- Assume each word in the string is separated by one space
- any substring of non-space chars is a word

Examples/Test Cases
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

Data Structures
- A string, separated into an array of words
- That array of words modified and returned

Algorithms
A method that takes a string
- split into an array
- map that array so that:
  - the return value is that word, plus a space, plus the word's length
=end

def word_lengths(str)
  str.split.map {|word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []