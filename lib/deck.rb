require './lib/card'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
    @count = 0
  end

  def count_cards
      @cards.count
end
