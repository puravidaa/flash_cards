require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [ @card_1, @card_2, @card_3 ]

    @deck = Deck.new(@cards)

    @round = Round.new(@deck)

    @new_turn = @round.take_turn("Juneau")
  end

  def test_it_exists
    skip
  assert_instance_of Round, @round
  end
  
  def test_it_takes_in_a_deck
    skip
  assert_equal @deck, @round.deck
  end

  def test_it_has_empty_turns_array
    skip
  assert_equal [], @round.turns
  end

  def test_it_shows_the_first_current_card
    skip
  assert_equal @deck.cards[0], @round.current_card
  end

  def test_it_takes_turns
    # second_turn = @round.take_turn
    # assert_not_equal @new_turn, second_turn
    turn = @round.take_turn("Juneau")
    assert_instance_of Turn, turn
    assert_equal @card_3, @round.current_card
  end

  def test_if_turn_is_correct
    assert @new_turn.correct?
  end

  def test_it_counts_turns
    @new_turn = @round.take_turn("Juneau")

    assert_equal 2, @round.turns.count
  end

  def test_if_last_feedback_comes_back_incorrect
    @turn = Turn.new("Denver", @card_1)
    assert_equal "Incorrect.", @turn.feedback
  end

  def test_if_number_correct_by_category
    assert_equal 1, @round.number_correct_by_category(:Geography)
    assert_equal 0, @round.number_correct_by_category(:STEM)
  end

  def test_it_return_percent_correct
    @turn_2 = @round.take_turn("Juneau")

    assert_equal 50.0, @round.percent_correct
  end

  def test_it_return_percent_correct_by_category
    @turn_2 = @round.take_turn("Juneau")

    assert_equal 100, @round.percent_correct_by_category(:Geography)
  end

end
