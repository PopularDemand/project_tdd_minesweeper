describe Board do
  let(:board) { Board.new(5) }
  let(:cell) { instance_double("Cell", ) }
  describe "#new" do
    it "sets size to the size passed in" do
      expect(board.size).to eq(5)
    end

    it "stores the grid as a two dimensional array" do
      expect(board.grid).to be_an(Array)
      expect(board.grid.all? { |row| row.is_a?(Array) }).to be true
    end

    it "" do

    end
  end
end