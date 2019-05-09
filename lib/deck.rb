require './lib/card'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
    @count = 0
  end

  def count
     @cards.count
  end

  def cards_in_category(category)
    @cards.find_all do |card|
      card.category == category
    end
  end 
end
