class Board
  attr_reader :size, :mines, :grid

  def initialize(size=10, mines=9)
    @size = size
    @mines = mines
    @grid = Array.new(10) { Array.new(10) { Cell.new }}
  end

  def setup
    place_mines
  end

  def place_mines
    @mines.times do 
      set_random_mine
    end
  end

  def set_random_mine
    x, y = random_coordinates
    if @grid[x][y].mine
      set_random_mine
    else
      @grid[x][y].mine = true
    end
  end

  def random_coordinates
    x = rand(0..@size)
    y = rand(0..@size)
    [x, y]
  end
end