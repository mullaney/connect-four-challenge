# Use this as a sketch of how your Board class could look, you can fill in these
# methods, or make a different class from scratch
class Board
  attr_reader :board_string
  def initialize
    generate_board
    puts print_grid
  end

  def drop_checker(color, column)
  end

  def generate_board
    @board_string = []
    6.times do
      @board_string << empty_row
    end
    @board_string << board_bottom
    @board_string << column_numbers
  end

  def print_grid
    @board_string.join
  end

  def empty_row
    "| | | | | | | |\n"
  end

  def board_bottom
    "---------------\n"
  end

  def column_numbers
    " 0 1 2 3 4 5 6 \n" end

  def game_won?
    false
  end
end
