=begin
given a word, computes scrabble score for that word

chart of tile scores (some letters, and a value)

for each (key/val), return val if key includes letter?

OR: find (key includes letter) and return [1]
=end

class Scrabble
  SCORES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    return 0 unless word.is_a?(String)

    letters = word.upcase.chars
    score = 0

    letters.each do |letter|
      key_val = SCORES.find(proc {0}) { |k, v| k.include?(letter) }
      score += key_val[1] #unless value.nil?
    end

    score
  end

  def self.score(word)
    Scrabble.new(word).score
  end


  private
  
  attr_reader :word
end



SCORES_ARR = [
  [%w(A E I O U L N R S T), 1],
  [%w(D G), 2],
  [%w(B C M P), 3],
  [%w(F H V W Y), 4],
  [%w(K), 5],
  [%w(J X), 8],
  [%w(Q Z), 10]
]
