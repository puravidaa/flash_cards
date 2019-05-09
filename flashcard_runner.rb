require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require 'pry'

# create some cards

@card_1 = Card.new("The city of La Paz in Bolivia is safe from fire because of what
?", "Altitude", :geography)

@card_2 = Card.new("By law, what is banned in Japanese restaurants?", "Tipping", :restaurants)

@card_3 = Card.new("Where does sound travel faster; water or air?", "Water", :science)

@card_4 = Card.new("What does a manometer measure?", "The pressure of a closed system.", :science)

# put your cards in a deck

@cards = [ @card_1, @card_2, @card_3, @card_4 ]

@deck = Deck.new(@cards)

@current_turn = 1

def current_turn
  @current_turn += 1
end

def start
  # create a new round using the deck you just created

  round = Round.new(@deck)
  puts "Welcome! You're playing #{@current_turn} with #{@cards.count} cards."

  @cards.each_with_index do |card, index|
    puts "This is card number #{index + 1} out of #{@cards.count}."
    puts "Question: #{round.current_card.question}"
    guess = gets.chomp
    turn = round.take_turn(guess)
    puts turn.feedback
  end

  puts "You had #{round.count} correct guesses" +
  " out of #{@cards.count} for a total score of #{round.percent_correct.to_i}%"

  categories = @cards.map { |card| card.category }.uniq
  categories.each do |category|
    puts "#{category} - #{round.percent_correct_by_category(category).to_i}% correct"
  end

end

# start the round using a new method called start

start
