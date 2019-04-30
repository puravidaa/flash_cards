require './lib/card'

class Turn
  attr_accessor :string, :card, :guess

  def initialize(guess, card)
    @card = card
    @guess = guess
    # @correct = correct
  end

  # def correct?
  #   if @guess == @answer
  #     puts true
  #     @correct = true
  #   else
  #     puts false
  #     @correct = false
  #   end
  # end
  #
  # def feedback
  #   if @correct == true
  #     puts "Correct!"
  #   else
  #     puts "Incorrect."
  #   end
  # end

end
