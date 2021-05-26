class Board
    attr_accessor :board

    def initialize
        @board = make_board
    end

    def make_board
        @board = Array.new(8) { Array.new(8, ' - ') }
    end

    def print_board
        puts <<~HEREDOC
           a  b  c  d  e  f  g  h
        8 #{@board[7][0]}#{@board[7][1]}#{@board[7][2]}#{@board[7][3]}#{@board[7][4]}#{@board[7][5]}#{@board[7][6]}#{@board[7][7]} 8
        7 #{@board[6][0]}#{@board[6][1]}#{@board[6][2]}#{@board[6][3]}#{@board[6][4]}#{@board[6][5]}#{@board[6][6]}#{@board[6][7]} 7
        6 #{@board[5][0]}#{@board[5][1]}#{@board[5][2]}#{@board[5][3]}#{@board[5][4]}#{@board[5][5]}#{@board[5][6]}#{@board[5][7]} 6
        5 #{@board[4][0]}#{@board[4][1]}#{@board[4][2]}#{@board[4][3]}#{@board[4][4]}#{@board[4][5]}#{@board[4][6]}#{@board[4][7]} 5
        4 #{@board[3][0]}#{@board[3][1]}#{@board[3][2]}#{@board[3][3]}#{@board[3][4]}#{@board[3][5]}#{@board[3][6]}#{@board[3][7]} 4
        3 #{@board[2][0]}#{@board[2][1]}#{@board[2][2]}#{@board[2][3]}#{@board[2][4]}#{@board[2][5]}#{@board[2][6]}#{@board[2][7]} 3
        2 #{@board[1][0]}#{@board[1][1]}#{@board[1][2]}#{@board[1][3]}#{@board[1][4]}#{@board[1][5]}#{@board[1][6]}#{@board[1][7]} 2
        1 #{@board[0][0]}#{@board[0][1]}#{@board[0][2]}#{@board[0][3]}#{@board[0][4]}#{@board[0][5]}#{@board[0][6]}#{@board[0][7]} 1
           a  b  c  d  e  f  g  h
        HEREDOC
    end

    def start_pieces
        (0..7).each do |num|
            @board[1][num] = " \u{265F} " #white pawns
            @board[6][num] = " \u{2659} " #black pawns
        end
        @board[0][0] = " \u{265C} " #white rooks
        @board[0][7] = " \u{265C} "
        @board[7][0] = " \u{2656} " #black rooks
        @board[7][7] = " \u{2656} "
        @board[0][1] = " \u{265E} " #white knights
        @board[0][6] = " \u{265E} "
        @board[7][1] = " \u{2658} " #black knights
        @board[7][6] = " \u{2658} "
        @board[0][2] = " \u{265D} " #white bishops
        @board[0][5] = " \u{265D} "
        @board[7][2] = " \u{2657} " #black bishops
        @board[7][5] = " \u{2657} "
        @board[0][3] = " \u{265B} " #white queen
        @board[0][4] = " \u{265A} " #white king
        @board[7][3] = " \u{2655} " #black queen
        @board[7][4] = " \u{2654} " #black king
        self.print_board
    end
end