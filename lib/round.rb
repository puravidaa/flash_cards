require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require 'pry'

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

  def number_correct_by_category(category)
    # find out if the card in turns is correct
    turns_in_category = @turns.find_all do |turn|
      turn.correct?
    end

    # find the number of correct turns in each category
    turns_correct = turns_in_category.find_all do |turn|
      turn.card.category == category
    end

    # count correct turns
    turns_correct.count
  end

  def percent_correct
    @number_correct / @turns.length.to_f * 100
  end

  def percent_correct_by_category(category)
    turns_in_category = @turns.find_all do |turn|
      turn.card.category == category
    end

    # number of correct answers in
    # category divided by the cards (for our two turns) in each category
    number_correct_by_category(category) / turns_in_category.count.to_f * 100
  end
end
