require 'minitest'
require "minitest/autorun"
require "./lib/cell"


class CellTest < Minitest::Test

  def setup
    @cell = Cell.new(0,0)
  end

  def test_a_cell_can_exist
    assert @cell
  end

  # def test_a_cell_knows_its_location
  #   @cell.row = 0
  #   @cell.col = 0
  #   assert_equal 0, @cell.row
  #   assert_equal 0, @cell.col
  # end


end
