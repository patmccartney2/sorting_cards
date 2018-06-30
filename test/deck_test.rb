require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("Queen", "Spades")
    card_3 = Card.new("Jack", "Hearts")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_attribute
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("Queen", "Spades")
    card_3 = Card.new("Jack", "Hearts")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_count
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("Queen", "Spades")
    card_3 = Card.new("Jack", "Hearts")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end


end
