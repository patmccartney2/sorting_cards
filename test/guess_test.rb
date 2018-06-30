require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_existence
  card = Card.new("10", "Hearts")
  guess = Guess.new("10 of Hearts", card)
  assert_instance_of Guess, guess
  end

  def test_attributes
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal card, guess.card
    assert_equal "10 of Hearts", guess.response
  end

  def test_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  def test_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    guess.correct?
    #binding.pry
    assert_equal "Correct!", guess.feedback
    card_2 = Card.new("10", "Hearts")
    guess_2 = Guess.new("10 of Spades", card)
    guess_2.correct?
    assert_equal "Incorrect.", guess_2.feedback
  end


end
