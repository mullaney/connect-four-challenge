require_relative 'board'

# This class is for initializing and running a game. It will
# need a new board and a way to keep track of who is the
# current player. The rest is up to you:
class Game
  def initialize
    @board = Board.new
    @current_player = :black
    @board.print_grid
  end

  def start
    puts 'A new game has begun!'
  end
end
