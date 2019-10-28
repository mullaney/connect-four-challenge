# Connect Four

![Connect 4](https://images-na.ssl-images-amazon.com/images/I/51PFqUcGZNL._AC_SY400_.jpg)

Connect Four is a game (similar to Tic-Tac-Toe) played with checkers on a vertical board. Players take turns dropping a red or black checker down one of seven columns. The goal is to connect four checkers of the same color horizontally, vertically or diagonally (see [How to play Connect 4](https://www.wikihow.com/Play-Connect-4)).

By the end of tonight our goal is to have a playable command line version of connect four. We have laid out the steps below, and included some ruby files you may use to kick start the project. You should clone or download the project from github.

To run the game type `ruby connect-four.rb` in the terminal in this directory. (Right now it doesnt do much.)

To run the tests type `rake test`. (Currently there is just one test to verify that tests can be run.)

## Step 1: Make the Board

First, you will need a Board class. This class will need some kind of data structure to keep track of a board with 7 columns and 6 rows. Your first step will be to create an instance variable to hold this grid, and initialize the grid when you make a new instance of the Board class.

In the Board class, we have included a method which genarates a multidimensional array to store board state (generate_board). Feel free to replace this with your own implementation of this method and/or data structure.

## Step 2: Make a print_board method

One thing you will need is a way to print out the current status of the board. There are a lot of ways you might do this. For instance you may want to draw the board using regular ASCII characters, perhaps use Xs and Os for the checkers. Or you might want to use the [colorize gem](https://github.com/fazibear/colorize) to create a board with red and black colored pieces.

To manage the board display we have included the [tty-table](https://github.com/piotrmurach/tty-table) gem, please refer to their README for more information. The gem is used in the print_grid method. Again, feel free to replace this with a different implementation if you wish. Otherwise move to Step 3 and start working on the game logic!

## Step 3: Make a drop_checker method

The board class will need a method to add a checker to the board. The method should take two arguments, a color (we can use symbols for :red and :black) and a column number.

- This method should put the checker in the first open row from the bottom, in that column.
- It should prevent the player from adding a 7th checker to a column since a column only has 6 rows.
- It should probably return a value (perhaps a boolean?), so that the code that calls this method knows whether or not the move was valid.

## Step 4: The Game Class

In order to have a playable game, you need a game class. When a new game is initialized it will need an instance of the Board class. It will need to set the color of the current player (:black traditionally goes first). It will also need a game loop of some kind.

For instance, on each turn:

- The loop waits for keyboard input from the player who chooses a column
- Then it tries to drop a checker into that column
- If the column is invalid (already full), the player can try a different column
- If it's a valid move, the turn is over

## Step 5: Win condition

If you manage to get the game loop working, you may want to add a check at the end of each turn to see if the game has been won. To do this, you will want another method on the Board class. For instance, the method could be called game_won? which returns true if there is a line of four connected colors.

You may want to break this step down into several different methods which check for four in a row horizontally, vertically or diagonally.

## Step 6: Player Bots, a stretch goal

If you make it this far, the next step will be to design some player bots which can play the game. Here are some ideas:

- Make a computer player which chooses columns randomly
- Make a computer player which concentrates on blocking opponents' connected lines
- Make a computer player which prioritizes extending their own connected lines
- Make a computer player which evaluates and ranks each possible move before choosing the best move
- Use AI to train a computer player (Let us know if you have suggestions of gems or libararies to help accomplish this)
