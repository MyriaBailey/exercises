=begin
- take a word
- and a list of possible anagrams
- selects the correct sublist of actual anagrams of the word

From test cases
- class Anagram
- instance method match that's given an array of words
- match returns an array (sometimes empty)

- must use every letter exactly once
- identical word is not anagram
- must have same number of chars
- case insensitive, returns original casing

ideas
- given an array, select:
  - downcase the word. split into chars. sort the chars (submethod)
  - anagram letters == submethod chars?
=end

class Anagram
  def initialize(word)
    @anagram = word
  end

  def match(words)
    anagram_letters = letters(anagram)

    words.select do |word|
      anagram_letters == letters(word) && !same_word?(word)
    end
  end

  private

  attr_reader :anagram

  def letters(word)
    word.downcase.chars.sort
  end

  def same_word?(word)
    anagram.downcase == word.downcase
  end
end