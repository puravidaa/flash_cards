require './lib/card'

class Turn
  attr_reader :card, :guess

  def initialize(guess, card)
    @card = card
    @guess = guess
  end

  def correct?
    @guess == @card.answer
  end

  def feedback
    if self.correct?
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
