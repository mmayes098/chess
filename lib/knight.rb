require_relative "space"

class Knight
    attr_reader :type
    attr_accessor :display, :position, :occupied

    def initialize(color, position)
        @position = position
        @color = color
        @type = "knight"
        @occupied = true
    end

    MOVES = [[1, 2], [2, 1], [-1, -2], [-2, -1], [1, -2], [-1, 2], [2, -1], [-2, 1]]

    def display
        if @color == "white"
            return " \u{265E} "
        else
            return " \u{2658} "
        end
    end

    def next_moves
        next_moves = MOVES.map do |move|
            move.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + @position[i]) > 7 }
        end
        next_moves.delete_if { |move| move.include?(nil) }
    end
end