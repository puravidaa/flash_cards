require './lib/card'

class Turn
  attr_accessor :string, :card
  
  def initialize(string, card)
    @string = string
    @card = card
    # @guess = guess
    # @correct = correct
  end

  # def guess
  #   if @string == @answer
  #
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
