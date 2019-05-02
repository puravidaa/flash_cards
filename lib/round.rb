require './lib/card'
require './lib/deck'
require './lib/round'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck 
  end
end
