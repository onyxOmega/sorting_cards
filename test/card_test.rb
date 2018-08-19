require "minitest/autorun"
require "minitest/pride"
require "..lib/card"

class CardTest < Minitest::Test
  def test_card_exists
    skip
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_card_has_suit_and_value
    skip
    card = Card.new("Ace", "Spades")
    assert_equal card.value, "Ace"
    assert_equal card.value, "Spades"
  end
end
