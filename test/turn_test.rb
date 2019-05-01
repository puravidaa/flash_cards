require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test
  attr_reader :card, :turn
  def setup

    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    @turn = Turn.new("Juneau", @card)

    @turn_2 = Turn.new("Birmingham", @card)
  end

  def test_it_exists

    assert_instance_of Turn, @turn
  end

  def test_it_takes_in_a_guess

    assert_equal "Juneau", @turn.guess
  end

  def test_it_is_correct
    # skip

    assert_equal true, @turn.correct?
  end

  def test_it_is_incorrect
    # skip

    assert_equal false, @turn_2.correct?
  end

  def test_it_takes_correct_feedback
    # skip

    assert_equal "Correct!", @turn.feedback
  end

  def test_it_takes_incorrect_feedback
    # skip

    assert_equal "Incorrect.", @turn_2.feedback
  end
end
