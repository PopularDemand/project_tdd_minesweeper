describe Board do
  let(:board) { Board.new(5) }

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
end