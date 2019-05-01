require './lib/card'

class Turn
  attr_accessor :string, :card, :guess

  def initialize(guess, card)
    @card = card
    @guess = guess
    @correct = false
  end

  def correct?
    if @guess == @card.answer
      return true
    else
      return false
    end
  end

  def feedback
    if self.correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
