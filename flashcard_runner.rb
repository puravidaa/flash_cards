require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

# create some cards

@card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

@card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

@card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

@card_4 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

# put your cards in a deck

@cards = [ @card_1, @card_2, @card_3, @card_4 ]

@deck = Deck.new(@cards)

# create a new round using the deck you just created

@round = Round.new(@deck)

# start the round using a new method called start

@current_turn = 1

def current_turn
  @current_turn += 1
end

def start
puts "Welcome! You're playing #{@current_turn} with #{@cards.count} cards."
puts '-------------------------------------------------'
puts "This is card number #{} out of #{@cards.count}."
puts "Question: #{@round.current_card.question}"
end

start
