require_relative "space"

class Pawn
    attr_reader :type
    attr_accessor :position, :occupied

    def initialize(color, position)
        @color = color
        @type = "pawn"
        @position = position
        @occupied = true
    end

    WHITE_FIRST_MOVE = [[1, 0], [2, 0]]
    BLACK_FIRST_MOVE = [[-1, 0], [-2, 0]]
    WHITE_MOVE = [1, 0]
    BLACK_MOVE = [-1, 0]

    def display
        if @color == "white"
            return " \u{265F} "
        else
            return " \u{2659} "
        end
    end

    def next_moves
        if @color == "white" && @position[0] == 1
            next_moves = WHITE_FIRST_MOVE.map do |move|
                move.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + @position[i]) > 7 }
            end
            next_moves.delete_if { |move| move.include?(nil) }
            return next_moves
        elsif @color == "black" && @position[0] == 6
            next_moves = BLACK_FIRST_MOVE.map do |move|
                move.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + @position[i]) > 7 }
            end
            next_moves.delete_if { |move| move.include?(nil) }
            return next_moves
        elsif @color == "white"
            next_moves = WHITE_MOVE.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + position[i]) > 7 }
            next_moves.delete_if { |move| move.include?(nil) }
            return next_moves
        else
            next_moves = BLACK_MOVE.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + position[i]) > 7 }
            next_moves.delete_if { |move| move.include?(nil) }
            return next_moves
        end
    end
end