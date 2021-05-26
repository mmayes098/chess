require_relative "board.rb"

class Queen
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "queen"
        @display = ""
    end

    def display
        if @color == "white"
            return " \u{265B} "
        else
            return " \u{2655} "
        end
    end
end