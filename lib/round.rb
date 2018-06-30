require './lib/card'
require './lib/guess'
require './lib/deck'

class Round

  attr_reader :correct_guesses,
              :incorrect_guesses,
              :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = []
    @incorrect_guesses = []
  end

  def deck
    @deck
  end

  def guesses
    @guesses
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(card_params)
      guess = Guess.new("#{card_params[:value]} of #{card_params[:suit]}", @deck.cards[0])
      @guesses << guess
      if guess.feedback == 'Correct!'
        @correct_guesses << guess.feedback
      end
      return guess
  end

  def number_correct
    @correct_guesses.length
  end

  def percent_correct
    result = @correct_guesses.length.to_f / @guesses.length.to_f * 100
    return result.to_i
  end




end
