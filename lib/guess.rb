class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    parsed_guess = @response.split(" ")
    guess_value = parsed_guess[0]
    guess_suit = parsed_guess[-1]
    @card.value == guess_value && @card.suit == guess_suit
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end
end
