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
    end
end