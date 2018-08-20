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
    loop do
      swap = false
      (@cards.length - 1).times do |i|
        if @cards[i].rank > @cards[i + 1].rank
          switch_cards(i)
          swap = true
        end
      end
      return @cards if !swap
    end
  end

  def switch_cards(i)
    hold_card = @cards[i]
    @cards[i] = @cards[i + 1]
    @cards[i + 1] = hold_card
  end
end
