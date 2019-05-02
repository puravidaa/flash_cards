require './lib/card'
require './lib/deck'
require './lib/round'
require 'minitest/autorun'
require 'minitest/pride'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [ @card_1, @card_2, @card_3 ]

    @deck = Deck.new(@cards)

    @round = Round.new(@deck)
  end

  def test_it_exists
    #skip
  assert_instance_of Round, @round
  end

  def test_it_takes_in_a_deck

  assert_equal @deck, @round.deck
  end
end