require_relative "board.rb"

class Pawn
    attr_accessor :display, :type

    def initialize(color)
        @color = color
        @type = "pawn"
        @display = ""
    end

    def display
        if @color == "white"
            return " \u{265F} "
        else
            return " \u{2659} "
        end
    end
end