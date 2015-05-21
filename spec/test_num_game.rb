require 'test/unit'
require_relative '../lib/guessing_game'

class MyNumberGuessTest < Test::Unit::TestCase

  def guess_setup
    @game = NumberGuess.new
  end

  def test_opener_method
    guess_setup # Given
    assert_equal("Welcome to Number Guess 3000",@game.opener)# Then
  end

  def test_get_input
    guess_setup # Given
     # When
    assert_equal(true,@game.get_input) # Then
  end # test_get_input method
end # class
