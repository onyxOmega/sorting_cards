require "minitest/autorun"
require "minitest/pride"
require "./lib/card"
require "./lib/deck"

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

  def test_deck_sorts_cards
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    assert_equal [card_1, card_3, card_2, card_5, card_4], deck.sort
  end
end
