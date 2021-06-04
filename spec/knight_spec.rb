require './lib/knight'

describe Knight do
    subject(:white_knight) { described_class.new("white", [0, 1]) }
    subject(:black_knight) { described_class.new("black", [7, 1]) }

    context "Initializes correctly" do
        it "Has the correct color - White" do
            expect(white_knight.instance_variable_get(:@color)).to eq("white")
        end

        it "Has the correct color - Black" do
            expect(black_knight.instance_variable_get(:@color)).to eq("black")
        end

        it "Has the correct position - White" do
            expect(white_knight.instance_variable_get(:@position)).to eq([0, 1])
        end

        it "Has the correct position - Black" do
            expect(black_knight.instance_variable_get(:@position)).to eq([7, 1])
        end
    end
    
    describe "#display" do
        it "Displays the correct white piece" do
            expect(white_knight.display).to eq(" \u{265E} ")
        end

        it "Displays the correct black piece" do
            expect(black_knight.display).to eq(" \u{2658} ")
        end
    end

    context "Calculates next moves correctly" do
        MOVES = [[1, 2], [2, 1], [-1, -2], [-2, -1], [1, -2], [-1, 2], [2, -1], [-2, 1]]

        let (:next_moves) { MOVES.map do |move|
            move.each_with_index.map { |m, i| m + white_knight.position[i] unless (m + white_knight.position[i]).negative? || (m + white_knight.position[i]) > 7 }
        end }

        it "Maps all possible next moves" do
            expect(next_moves).to eq([[1, 3], [2, 2], [nil, nil], [nil, 0], [1, nil], [nil, 3], [2, 0], [nil, 2]])
        end

        it "Removes moves that go off the board" do
            next_moves.delete_if { |move| move.include?(nil) }
            expect(next_moves).to eq([[1, 3], [2, 2], [2, 0]])
        end
    end
end