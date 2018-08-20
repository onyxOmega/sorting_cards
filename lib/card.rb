class Card
  attr_reader :value, :suit, :rank
  def initialize(value, suit)
    @value = value
    @suit = suit
    @rank = value_rank + suit_rank
    require 'pry'; binding.pry
  end

  def value_rank
    if value.to_i != nil
      return value.to_i * 10
    else
      return 110 if @value == "Jack"
      return 120 if @value == "King"
      return 130 if @value == "Queen"
      return 140 if @value == "Ace"
    end
  end

  def suit_rank
    return 1 if @suit == "Clubs"
    return 2 if @suit == "Diamonds"
    return 3 if @suit == "Hearts"
    return 4 if @suit == "Spades"
  end

end
