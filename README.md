This project is the capstone project for The Odin Project's Ruby Programming curriculum.

The assignment is to build a command line Chess game where two players can play against each other. It should prevent players from making illegal moves and declare check or checkmate at the appropriate times. It should also be able to save at any time.

To begin with, I have created a board which holds pieces. Each piece is a class instance of the appropriate piece (pawn, bishop, etc.) and displays the unicode character for the appropriate piece.

I have also created tests to help test my methods. Thus far I have tests for checking if a space exists on the board (valid?) and translating the space given into zero-based indexing for the board.

6/4: Added knight_spec and logic into Knight class based on Knights Travails project to create an array of the next moves for that particular position. This lists all moves and only takes into account going off the board, not whether any of the spaces are occupied.

6/5: Added prompt to ask which of next moves player would like to choose.

6/6: Translated next moves prompt to proper letter/number combinations, fixed bug in Board.translate_space method, finished logic to calculate and display next moves for Knight pieces, again only taking into account going off the board, not if any of the next spaces are occupied, and added appropriate spec test. Added logic and specs to remove occupied spaces from valid moves list. Added logic for all pieces, only taking into account going off the board or if a space is occupied, not whether or not they are jumping over other pieces.

6/7: Fixed pawn logic to work correctly for black pieces, testing if validating move logic can be included in piece classes

6/15: Fixed move logic for occupied spaces, working on how to access board from inside separate piece classes (not sure if can be done); may need to make trees for each piece

6/16: Reworking move validation logic to take into account legal/illegal moves (not skipping over pieces, etc). Finished knight, king, pawn, rook validation logic.