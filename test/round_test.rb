require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/round.rb'


class RoundTest < Minitest::Test

  def test_existence
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_deck = Deck.new([card_1, card_2])
    round = Round.new(card_deck)
    assert_instance_of Round, round
  end

    def test_it_can_hold_deck
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      card_deck = Deck.new([card_1, card_2])
      round = Round.new(card_deck)
      assert_equal card_deck, round.deck
    end

    def test_current_card
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      card_deck = Deck.new([card_1, card_2])
      round = Round.new(card_deck)
      assert_equal card_1, round.current_card
    end

    def test_record_guess
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      result = round.record_guess({value: "3", suit: "Hearts"})
      assert_equal round.guesses[0], result
    end

    def test_count_guesses
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "3", suit: "Hearts"})
      assert_equal 1, round.guesses.length
      assert_equal "Correct!", round.guesses.first.feedback
    end

    def test_incorrect_guess
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "2", suit: "Hearts"})
      assert_equal "Incorrect.", round.guesses.first.feedback
    end

    def test_number_correct
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "2", suit: "Hearts"})
      round.record_guess({value: "3", suit: "Hearts"})
      result = round.number_correct
      assert_equal 1, result
    end

    def test_percent_correct
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "2", suit: "Hearts"})
      round.record_guess({value: "3", suit: "Hearts"})
      result = round.percent_correct
      binding.pry
      assert_equal 50, result
    end

end
