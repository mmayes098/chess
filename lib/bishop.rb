require_relative "board.rb"
require_relative "space.rb"

class Bishop
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "bishop"
        @display = ""
        @occupied = true
    end

    def display
        if @color == "white"
            return " \u{265D} "
        else
            return " \u{2657} "
        end
    end
end