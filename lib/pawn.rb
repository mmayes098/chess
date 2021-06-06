require_relative "space.rb"

class Pawn

    def initialize(color)
        @color = color
        @type = "pawn"
        @display = ""
        @occupied = true
    end

    def display
        if @color == "white"
            return " \u{265F} "
        else
            return " \u{2659} "
        end
    end
end