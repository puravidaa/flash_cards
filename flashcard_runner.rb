require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

# create some cards

@card_1 = Card.new("The city of La Paz in Bolivia is safe from fire because of what?:
?", "Too much altitude - Not enough air for burning", :Geography)

@card_2 = Card.new("By law, 89what is banned in Japanese restaurants?", "Tipping", :STEM)

@card_3 = Card.new("Where does sound travel faster; water or air?", "Water", :STEM)

@card_4 = Card.new("What does a manometer measure?", "The pressure of a closed system.", :STEM)

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
