require_relative "board.rb"

class Bishop
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "bishop"
        @display = ""
    end

    def display
        if @color == "white"
            return " \u{265D} "
        else
            return " \u{2657} "
        end
    end
end