require_relative "space"

class King
    attr_reader :type
    attr_accessor :position, :occupied

    def initialize(color, position)
        @color = color
        @type = "king"
        @position = position
        @occupied = true
    end

    MOVES = [[1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1]]

    def display
        if @color == "white"
            return " \u{265A} "
        else
            return " \u{2654} "
        end
    end

    def next_moves
        next_moves = MOVES.map do |move|
            move.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + @position[i]) > 7 }
        end
        next_moves.delete_if { |move| move.include?(nil) }
    end
end