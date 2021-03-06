require './lib/board'

describe Board do
    subject(:board) { described_class.new }

    # These get_space tests are commented out because I haven't figured out how to simulate input in rspec yet
    # describe "#get_space" do
    #     it "correctly returns the piece located at the space" do
    #         board.start_pieces
    #         expect(board.get_space).to eq(" \u{265F} ")
    #     end
    # end

    describe "#translate_space" do
        it "provides proper indices given a2 input" do
            input = "a2"
            translated_input = board.translate_space(input)
            expect(translated_input).to eq("10")
        end

        it "provides proper indices given f5 input" do
            input = "f5"
            translated_input = board.translate_space(input)
            expect(translated_input).to eq("45")
        end

        it "works with capital letters" do
            expect(board.translate_space("A2")).to eq("10")
        end
    end

    describe "#valid_space?" do
        it "checks if a space is on the board horizontally" do
            expect(board.valid_space?("a5")).to eq(true)
        end

        it "checks if a space is not on the board horizontally" do
            expect(board.valid_space?("k5")).to eq(false)
        end

        it "checks if a space is on the board vertically" do
            expect(board.valid_space?("d3")).to eq(true)
        end

        it "checks if a space is not on the board vertically" do
            expect(board.valid_space?("g9")).to eq(false)
        end

        it "returns false for large numbers" do
            expect(board.valid_space?("h25")).to eq(false)
        end

        it "works with capital letters" do
            expect(board.valid_space?("A2")).to eq(true)
        end
    end

    describe "#translate_moves" do
        it "returns correct spaces given Knight at g1 input" do
            next_moves = [[2, 7], [1, 4], [2, 5]]
            expect(board.translate_moves(next_moves)).to eq("f3, h3")
        end
    end

    describe "#occupied?" do
        context "returns true for occupied spaces" do
            it "works for starting white pieces" do
                expect(board.occupied?([0, 0])).to eq(true)
                expect(board.occupied?([1, 7])).to eq(true)
            end

            it "works for starting black pieces" do
                expect(board.occupied?([7, 0])).to eq(true)
                expect(board.occupied?([6, 5])).to eq(true)
            end
        end

        it "returns false for starting empty spaces" do
            expect(board.occupied?([4, 2])).to eq(false)
            expect(board.occupied?([5, 6])).to eq(false)
        end
    end
end