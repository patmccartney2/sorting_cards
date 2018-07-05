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

  def test_sort
    card_1 = Card.new("4","Hearts")
    card_4 = Card.new("Ace", "Spades")
    card_3 = Card.new("5", "Diamonds")
    card_5 = Card.new("Ace", "Diamonds")
    card_2 = Card.new("Jack", "Clubs")
    deck = Deck.new([card_1, card_5, card_3, card_4, card_2])
    result = deck.sort
    expected = [card_1, card_3, card_2, card_5, card_4]
    assert_equal expected, result
  end

  def test_sort_again_because_I_cant_believe_it_works
    card_1 = Card.new("2","Hearts")
    card_4 = Card.new("10", "Spades")
    card_3 = Card.new("5", "Diamonds")
    card_5 = Card.new("8", "Diamonds")
    card_2 = Card.new("10", "Clubs")
    deck = Deck.new([card_1, card_5, card_3, card_4, card_2])
    result = deck.sort
    expected = [card_1, card_3, card_5, card_2, card_4]
    assert_equal expected, result
  end

end
