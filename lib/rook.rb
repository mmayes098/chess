require_relative "board.rb"
require_relative "space.rb"
require 'byebug'

class Rook < Space
    attr_accessor :display

    def initialize(color)
        @color = color
        @type = "rook"
        @display = ""
        @occupied = true
    end

    MOVES = [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7], [-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]]

    def display
        if @color == "white"
            return " \u{265C} "
        else
            return " \u{2656} "
        end
    end

    def next_moves
        next_moves = MOVES.map do |move|
            move.each_with_index.map { |m, i| m + @position[i] unless (m + @position[i]).negative? || (m + @position[i]) > 7 }
        end
        next_moves.delete_if { |move| move.include?(nil) }
    end
end