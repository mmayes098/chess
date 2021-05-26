require_relative "board.rb"

class Rook
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "rook"
        @display = ""
    end

    def display
        if @color == "white"
            return " \u{265C} "
        else
            return " \u{2656} "
        end
    end
end