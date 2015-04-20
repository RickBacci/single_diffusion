require 'minitest'
require "minitest/autorun"
require "./lib/board"
require "./lib/cell"


class BoardTest < MiniTest::Test

  def setup
    @board = Board.new(9, 9)
    @cells = []
  end

  def test_board
    assert @board
  end

  def test_you_can_generate_a_board
    @board.generate
  end

  def test_the_board_has_the_correct_size
    board = Board.new(9, 9)
    board.generate
    assert_equal 81, board.cells.length
  end

  def test_something_can_populate_the_board
    puts @board.generate
  end
end
