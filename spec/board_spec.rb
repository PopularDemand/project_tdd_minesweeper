describe Board do
  let(:board) { Board.new(5) }
  let (:test_grid) { [[ Cell.new(true), Cell.new, Cell.new],
                      [ Cell.new(true), Cell.new, Cell.new],
                      [ Cell.new(true), Cell.new, Cell.new]] }
 
  describe "#new" do

    it "sets size to the size passed in" do
      expect(board.size).to eq(5)
    end

    it "stores the grid as a two dimensional array" do
      expect(board.grid).to be_an(Array)
      expect(board.grid.all? { |row| row.is_a?(Array) }).to be true
    end

    it "has a cell at each coordinate" do
      expect(board.grid.all? do |row|
        row.all? do |cell|
          cell.is_a?(Cell)
        end
      end).to be true 
    end
  end

  describe "#setup" do 

    it "puts specified number of mines on the grid" do 
      board.setup
      expect(board.grid.inject(0) do |total, row|
        total += row.count { |cell| cell.mine }
      end).to eq(9)
    end
  end

  describe "#get_adjacent_mines" do
    it "returns the number of adjacent mines to a cell" do
      expect(Board.new(10, 9, test_grid).get_adjacent_mines(1,1)).to eq(3)
    end
  end
end