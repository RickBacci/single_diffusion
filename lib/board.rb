

Cell = Struct.new(:row, :col, :val)

class Board

  attr_accessor :rows, :cols, :cells, :board_size

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
    return @cells
  end
end
