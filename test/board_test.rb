require 'minitest'
require "minitest/autorun"
require "./lib/board"
require "./lib/cell"


class BoardTest < MiniTest::Test

  def setup
    @board = Board.new(9, 9)
    @cells = []
    @objects = "WWWWWWWWWW..PPP..WW.WWWWW.WW.......WX.WWP\
WW.WW.......WW.WWWWW.WW...T...WWWWWWWWWW".chars
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

  def test_can_add_a_target_to_the_board
    @board.generate

    @board.populate([:target])
    assert_equal :target, @board.cells[0].object
    puts @board.cells[0]
  end

  def test_entire_board_can_be_populated
    @board.generate

    puts @board.populate(@objects)
    assert_equal 81, @objects.size
  end
end
