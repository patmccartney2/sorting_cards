require './lib/card'
require './lib/guess'

class Deck

  attr_reader :cards,
              :saved_indicies,
              :value_range

  def initialize(cards)
    @saved_indicies = []
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    ordered_deck = @cards
    length = ordered_deck.length
    loop do
      swap = false
      (length - 1).times do |x|
        if ordered_deck[x].total_card_value > ordered_deck[x + 1].total_card_value
          ordered_deck[x], ordered_deck[x + 1] = ordered_deck[x + 1], ordered_deck[x]
          swap = true
          end
                          end
          break if not swap
          end
      return ordered_deck
    end

end
