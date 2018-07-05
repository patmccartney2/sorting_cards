class Card

  attr_reader :value,
              :suit,
              :total_card_value

  def initialize(value, suit)
    @total_card_value = get_total_value(suit) + get_total_value(value)
    @value = value
    @suit = suit
  end

  def get_total_value(suit_or_face_value)
    value_range =   {
                    "2" => 20,
                    "3" => 30,
                    "4" => 40,
                    "5" => 50,
                    "6" => 60,
                    "7" => 70,
                    "8" => 80,
                    "9" => 90,
                    "10" => 100,
                    "Jack" => 110,
                    "Queen" => 120,
                    "King" => 130,
                    "Ace" => 140,
                    "Clubs" => 1,
                    "Diamonds" => 2,
                    "Hearts" => 3,
                    "Spades" => 4,
                      }
        value_range[suit_or_face_value]
      end

end
