require "minitest/autorun"
require "minitest/pride"
require "../lib/card"
require "../lib/deck"

class DeckTest < Minitest::Test
  def test_deck_exists
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end
  def test_deck_has_cards
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal card_1, deck.cards[0]
    assert_equal card_2, deck.cards[1]
    assert_equal card_3, deck.cards[2]
  end

  def test_deck_counts_cards
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end
end
