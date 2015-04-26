require 'pry'

Cell = Struct.new(:row, :col, :object)

class Board

  attr_accessor :rows, :cols, :cells, :board_size, :objects

  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @board_size = rows * cols
    @coords = []
  end

  def generate
    @cells = []
    1.upto(rows) do |row|
      1.upto(cols) do |col|
       @cells << Cell.new(row, col)
      end
    end
    return cells
  end

  def populate(objects)
    cells.each_with_index { |cell, index| cell.object = objects[index] }
  end
end
objects = "WWWWWWWWWW..PPP..WW.WWWWW.WW.......WX.WWP\
WW.WW.......WW.WWWWW.WW...T...WWWWWWWWWW".chars

board = Board.new(9, 9)
board.generate
p board.populate(objects)
