require "minitest/autorun"
require "minitest/pride"
require "../lib/card"
require "../lib/guess"
require "../lib/deck"
require "../lib/round"

class RoundTest < Minitest::Test
  def test_exists
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_has_deck_and_cards
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Deck, round.deck
    assert_instance_of Array, round.cards
    assert_instance_of Card, round.cards[0]
  end

  def test_tracks_guesses
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Array, round.guesses
  end

  def test_gets_top_card
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_records_guesses
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "3 of Hearts", round.guesses.first.response
    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_moves_top_card_after_guess
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal card_2, round.current_card
  end

  def test_counts_correct_guesses
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal 0, round.number_correct
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 1, round.number_correct
  end

  def test_calculates_percent_correct
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 50, round.percent_correct
  end
end
