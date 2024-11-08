class Card
  include Comparable

  attr_reader :rank, :suit

  RANKING_ORDER = (2..10).to_a + %w(Jack Queen King Ace)

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    idx_1 = RANKING_ORDER.index(rank)
    idx_2 = RANKING_ORDER.index(other_card.rank)
    
    idx_1 <=> idx_2
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

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.