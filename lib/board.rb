class Board
  attr_reader :size, :mines, :grid

  def initialize(size=10, mines=9)
    @size = size
    @mines = mines
    @grid = Array.new(10) { Array.new(10) { Cell.new }}
  end
end