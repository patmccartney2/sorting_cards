require './lib/card'

class Guess

  attr_reader :response,
              :card,
              :response_boolean

  def initialize(response, card)
    @response = response
    @card = card
    @response_boolean
  end

  def correct?
    response = []
    @response.split.each_with_index do |string, index|
      if index != 1
        response << string
      end
    end
    if @card.suit == response[1] && @card.value == response[0]
      @response_boolean = true
    end
  end

  def feedback
    correct?
    if @response_boolean == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
