require_relative "board.rb"
require_relative "space.rb"

class Queen < Space
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "queen"
        @display = ""
        @occupied = true
    end

    def display
        if @color == "white"
            return " \u{265B} "
        else
            return " \u{2655} "
        end
    end
end