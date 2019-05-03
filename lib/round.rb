require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
# require 'binding.pry'

class Round
  attr_reader :deck, :turns, :current_card

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card_number = 0
    @number_correct = 0
    @current_card = @deck.cards[@current_card_number]
  end

  def take_turn(guess)
    turn_1 = Turn.new(guess, @current_card)

    # store turn in @turns
    @turns << turn_1

    # check if card is correct
    if turn_1.correct? == true
      @number_correct += 1
    end

    # move to next card
    @current_card_number += 1
    @current_card = @deck.cards[@current_card_number]
    turn_1
  end

  def count
    @number_correct
  end

  # how many guesses are correct


end
