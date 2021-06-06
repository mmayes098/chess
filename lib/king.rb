require_relative "space.rb"

class King
    attr_accessor :position

    def initialize(color)
        @color = color
        @type = "king"
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