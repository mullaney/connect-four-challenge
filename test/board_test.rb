require 'test_helper'

class BoardTest < MiniTest::Test
  def setup
    @board = Board.new
  end

  def test_the_truth
    assert_equal true, true
  end
end
