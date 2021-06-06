This project is the capstone project for The Odin Project's Ruby Programming curriculum.

The assignment is to build a command line Chess game where two players can play against each other. It should prevent players from making illegal moves and declare check or checkmate at the appropriate times. It should also be able to save at any time.

To begin with, I have created a board which holds pieces. Each piece is a class instance of the appropriate piece (pawn, bishop, etc.) and displays the unicode character for the appropriate piece.

I have also created tests to help test my methods. Thus far I have tests for checking if a space exists on the board (valid?) and translating the space given into zero-based indexing for the board.

6/4: Added knight_spec and logic into Knight class based on Knights Travails project to create an array of the next moves for that particular position. This lists all moves and only takes into account going off the board, not whether any of the spaces are occupied.

6/5: Added prompt to ask which of next moves player would like to choose.

6/6: Translated next moves prompt to proper letter/number combinations.