require 'minitest/pride'
require 'minitest/autorun'
require './lib/card'

class CardTest < Minitest::Test

  def test_card_exists
    card = Card.new("Qeen", "Spades")
    assert_instance_of Card, card
  end

  def test_card_has_attributes
    card = Card.new("Queen", "Spades")
    assert_equal "Queen", card.value
    assert_equal "Spades", card.suit
  end


end
