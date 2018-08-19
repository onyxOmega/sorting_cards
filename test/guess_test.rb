require "minitest/autorun"
require "minitest/pride"
require "..lib/guess"
require "..lib/card"

class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_guess_has_response_and_card
    skip
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_good_guess_is_correct
    skip
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert guess.correct?
  end

  def test_good_guess_is_handled
    skip
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert guess.correct?
    assert.equal "Correct!", guess.feedback
  end

  def test_bad_guess_is_handled
    skip
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("Two of Diamonds", card)
    refute guess.correct?
    assert.equal "Incorrect.", guess.feedback
  end
end
