require_relative "board.rb"
require_relative "space.rb"

class Rook < Space
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "rook"
        @display = ""
        @occupied = true
    end

    def display
        if @color == "white"
            return " \u{265C} "
        else
            return " \u{2656} "
        end
    end
end