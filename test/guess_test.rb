require "minitest/autorun"
require "minitest/pride"
require "../lib/guess"
require "../lib/card"

class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_guess_has_response_and_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
    assert_instance_of Card, guess.card
    assert_equal "10", guess.card.value
    assert_equal "Hearts", guess.card.suit
  end

  def test_good_guess_is_handled
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert guess.correct?
    assert_equal "Correct!", guess.feedback
  end

  def test_bad_guess_is_handled
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("Two of Diamonds", card)
    refute guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end
end
