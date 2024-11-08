class Card
  include Comparable

  attr_reader :rank, :suit, :rank_value

  RANKING_ORDER = (2..10).to_a + %w(Jack Queen King Ace)

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @rank_value = RANKING_ORDER.index(rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    # idx_1 = RANKING_ORDER.index(rank)
    # idx_2 = RANKING_ORDER.index(other_card.rank)
    
    rank_value <=> other_card.rank_value
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    create_deck
    shuffle_deck
  end

  def draw
    create_deck && shuffle_deck if deck.empty?
    deck.pop
  end

  private

  attr_accessor :deck

  def create_deck
    self.deck = []

    RANKS.each do |rank|
      SUITS.each do |suit|
        deck << Card.new(rank, suit)
      end
    end
  end

  def shuffle_deck
    deck.shuffle!
  end
end

# Include Card and Deck classes from the last two exercises.

# STATUS: DONE, BUT COULD BE REFACTORED (poor data structuring)

=begin
How to determine if sequential ranks?
- map each element to whether the next idx element has a val+1 relation
  - for all 5: there will be 4 true (n - 1)
  - if 2 of seq rank: 1 true
  - none true means none seq

How to determine if there's x cards of a rank?
- given a (for each/any) rank: count cards, == to x?

=end

class PokerHand
  def initialize(deck)
    if deck.is_a?(Deck)
      draw_hand(deck)
    else
      @hand = deck.sort
    end

    @ranks = hand.map(&:rank)
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  attr_reader :hand, :ranks

  def draw_hand(deck)
    @hand = []
    5.times { |_| hand << deck.draw }
    hand.sort!
  end

  def royal_flush?
    all_same_suit? && ranks == Deck::RANKS[-5..-1]
  end

  def straight_flush?
    all_same_suit? && five_in_seq?
  end

  def four_of_a_kind?
    rank_counts.value?(4)
  end

  def full_house?
    rank_counts.value?(3) && rank_counts.value?(2)
  end

  def flush?
    all_same_suit?
  end

  def straight?
    five_in_seq?
  end

  def three_of_a_kind?
    rank_counts.value?(3)
  end

  def two_pair?
    rank_counts.values.count(2) == 2
  end

  def pair?
    rank_counts.value?(2)
  end

  def all_same_suit?
    hand.all? { |card| card.suit == hand[0].suit }
  end

  def five_in_seq?
    seqs = hand.map.with_index do |card, idx|
      next_card = hand[idx + 1]
      next false if next_card.nil?

      current_val = card.rank_value
      next_val = next_card.rank_value

      current_val == next_val - 1
    end

    seqs.count(true) == 4
  end

  def rank_counts
    counts = Hash.new(0)
    ranks.each { |rank| counts[rank] += 1 }
    counts
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
# puts "ROYAL:"
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

# puts "STRAIGHT FLUSH:"
hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

# puts "FLUSH:"
hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

# puts "STRAIGHT:"
hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

# puts "STRAIGHT 2:"
hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

# puts "THREE"
hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

# puts "PAIR:"
hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

# puts "HIGH:"
hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'