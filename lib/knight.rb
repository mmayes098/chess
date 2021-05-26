require_relative "board.rb"

class Knight
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "knight"
        @display = ""
    end

    def display
        if @color == "white"
            return " \u{265E} "
        else
            return " \u{2658} "
        end
    end
end