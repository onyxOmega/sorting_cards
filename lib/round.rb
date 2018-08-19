class Round
  attr_reader :deck, :guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(new_guess)
    guess = "#{new_guess[:value]} of #{new_guess[:suit]}"
    top_card = current_card
    @deck.cards.push(@deck.cards.shift)
    guesses << Guess.new(guess, top_card)
  end

  def number_correct
    @guesses.select {|guess| guess.correct?}.length
  end

  def percent_correct
    (100 * number_correct) / @guesses.count
  end
end
