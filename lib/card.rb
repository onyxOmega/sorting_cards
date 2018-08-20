class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def rank
    value_rank + suit_rank
  end

  def value_rank
    return 110 if @value == "Jack"
    return 120 if @value == "King"
    return 130 if @value == "Queen"
    return 140 if @value == "Ace"
    return value.to_i * 10
  end

  def suit_rank
    return 1 if @suit == "Clubs"
    return 2 if @suit == "Diamonds"
    return 3 if @suit == "Hearts"
    return 4 if @suit == "Spades"
  end
end
