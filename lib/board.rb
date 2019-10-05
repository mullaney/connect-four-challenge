# frozen_string_literal: true
# Use this as a sketch of how your Board class could look, you can fill in these
# methods, or make a different class from scratch
require 'tty-table'

class Board
  attr_accessor :table

  def initialize
    generate_board
  end

  def drop_checker(color, column)
  end

  def generate_board
    @table = TTY::Table.new headers: headers, rows: build_rows
  end

  def build_rows
    rows = []
    6.times do
      rows << []
    end

    rows.each do |r|
      6.times do
        r << empty_string
      end
    end
    @rows = rows
  end

  def empty_string
    "     ".freeze
  end

  def headers
    [0, 1, 2, 3, 4, 5, 6]
  end

  def update(col, color)
    row = -1
    begin
    while @rows[row][col] != empty_string
      row -= 1
    end
    rescue NoMethodError => e
      puts "you can't place a checker there"
    else
      @rows[row][col] = color
      @table = TTY::Table.new headers: headers, rows: @rows
    end
    print_grid
  end

  def print_grid
    puts @table.render(:ascii)
  end

  def game_won?
    false
  end
end
