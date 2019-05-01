require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_instance_of Turn, turn
  end

  def test_it_takes_in_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal "Juneau", turn.guess
  end

  def test_it_is_correct
    # skip
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal true, turn.correct?
  end

  def test_it_takes_feedback
    # skip
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal "Correct!", turn.feedback 
  end
end
