require 'test_helper'


class BoardTest < MiniTest::Test
  def setup
    @board = Board.new
    @board_string = "| | | | | | | |\n| | | | | | | |\n| | | | | | | |\n| | | | | | | |\n| | | | | | | |\n| | | | | | | |\n---------------\n 0 1 2 3 4 5 6 \n"
  end

  def test_the_truth
    assert_equal true, true
  end

  def test_the_board
    assert_equal @board.print_grid, @board_string
  end
end
