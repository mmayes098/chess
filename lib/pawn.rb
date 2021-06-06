require_relative "board.rb"
require_relative "space.rb"

class Pawn < Space
    attr_accessor :display, :type

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