class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = []
    @cards << cards
    @cards = @cards.flatten
  end

  def count
    @cards.length
  end

  def sort
    
  end
end
