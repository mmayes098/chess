require './lib/board'

describe Board do
    subject(:board) { described_class.new }

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
end