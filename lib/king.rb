require_relative "board.rb"
require_relative "space.rb"

class King
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "king"
        @display = ""
        @occupied = true
    end

    def display
        if @color == "white"
            return " \u{265A} "
        else
            return " \u{2654} "
        end
    end
end