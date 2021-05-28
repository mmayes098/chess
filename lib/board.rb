Dir["./lib/*.rb"].each { |file| require file }
require 'byebug'

class Board
    attr_accessor :board

    def initialize
        @board = make_board
        @player = 1
    end

    def make_board
        @board = Array.new(8) { Array.new(8, ' - ') }
    end

    def print_board
        puts <<~HEREDOC
           a  b  c  d  e  f  g  h
        8 #{@board[7][0].display}#{@board[7][1].display}#{@board[7][2].display}#{@board[7][3].display}#{@board[7][4].display}#{@board[7][5].display}#{@board[7][6].display}#{@board[7][7].display} 8
        7 #{@board[6][0].display}#{@board[6][1].display}#{@board[6][2].display}#{@board[6][3].display}#{@board[6][4].display}#{@board[6][5].display}#{@board[6][6].display}#{@board[6][7].display} 7
        6 #{@board[5][0]}#{@board[5][1]}#{@board[5][2]}#{@board[5][3]}#{@board[5][4]}#{@board[5][5]}#{@board[5][6]}#{@board[5][7]} 6
        5 #{@board[4][0]}#{@board[4][1]}#{@board[4][2]}#{@board[4][3]}#{@board[4][4]}#{@board[4][5]}#{@board[4][6]}#{@board[4][7]} 5
        4 #{@board[3][0]}#{@board[3][1]}#{@board[3][2]}#{@board[3][3]}#{@board[3][4]}#{@board[3][5]}#{@board[3][6]}#{@board[3][7]} 4
        3 #{@board[2][0]}#{@board[2][1]}#{@board[2][2]}#{@board[2][3]}#{@board[2][4]}#{@board[2][5]}#{@board[2][6]}#{@board[2][7]} 3
        2 #{@board[1][0].display}#{@board[1][1].display}#{@board[1][2].display}#{@board[1][3].display}#{@board[1][4].display}#{@board[1][5].display}#{@board[1][6].display}#{@board[1][7].display} 2
        1 #{@board[0][0].display}#{@board[0][1].display}#{@board[0][2].display}#{@board[0][3].display}#{@board[0][4].display}#{@board[0][5].display}#{@board[0][6].display}#{@board[0][7].display} 1
           a  b  c  d  e  f  g  h
        HEREDOC
    end

    def start_pieces
        (0..7).each do |num|
            @board[1][num] = Pawn.new("white") #white pawns
            @board[6][num] = Pawn.new("black") #black pawns
        end
        @board[0][0] = Rook.new("white") #white rooks
        @board[0][7] = Rook.new("white")
        @board[7][0] = Rook.new("black") #black rooks
        @board[7][7] = Rook.new("black")
        @board[0][1] = Knight.new("white") #white knights
        @board[0][6] = Knight.new("white")
        @board[7][1] = Knight.new("black") #black knights
        @board[7][6] = Knight.new("black")
        @board[0][2] = Bishop.new("white") #white bishops
        @board[0][5] = Bishop.new("white")
        @board[7][2] = Bishop.new("black") #black bishops
        @board[7][5] = Bishop.new("black")
        @board[0][3] = Queen.new("white") #white queen
        @board[0][4] = King.new("white") #white king
        @board[7][3] = Queen.new("black") #black queen
        @board[7][4] = King.new("black") #black king
        self.print_board
        # self.get_space
    end

    def get_space
        # puts "Player #{@player}, please select the piece you would like to move (e.g. a1):"
        # space = gets.chomp.to_s
        space = "a2"
        if self.valid_space?(space)
            translated_space = translate_space(space).to_i
            piece = @board[translated_space[0]][translated_space[1]]
            return piece
        else
            puts "That is not a valid space!"
            self.get_space
        end
    end

    def valid_space?(space)
        letters = "abcdefgh"
        return false if space.length > 2
        return false unless letters.include?(space[0].downcase)
        return false if space[1].to_i < 1 || space[1].to_i > 8

        true
    end

    def translate_space(space)
        letters = "abcdefgh"
        horizontal = letters.index(space[0].downcase)
        vertical = space[1].to_i - 1
        return horizontal.to_s + vertical.to_s
    end
end