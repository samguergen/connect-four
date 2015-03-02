# Connect Four Challenge

## Learning Competencies
- Use OOP design to model a connect four board.
- Use the MVC pattern to organize the interaction between users and the model.

## Summary

Build a simple interface to [connect four](http://en.wikipedia.org/wiki/Connect_Four).

## Releases

### Release 0: Build a simple connect four model

Create a simple board class to represent the state of the connect four game. Design the methods through which you will interact with the board. Example below:

```
irb(main)> board = Board.new
irb(main)> board.place('O', 1)
irb(main)> board.place('X', 1) # piece, column
irb(main)> board.place('O', 2)
irb(main)> puts board
|       |
|       |
|       |
|       |
| X     |
| OO    |
-0123456-
```

### Release 1: Create a controller to handle input from players

The controller will create an instance of your model and then take input from the players to modify the model's state.

You can use the following code to clear the screen: `print "\e[H\e[2J"`

Example below:

```
$ ruby connect_four.rb
Welcome to Connect Four.
|       |
|       |
|       |
|       |
|       |
|       |
-0123456-
Enter your move player 1: 5
|       |
|       |
|       |
|       |
|       |
|     O |
-0123456-
Enter your move player 2: 4
|       |
|       |
|       |
|       |
|       |
|    XO |
-0123456-
Enter your move player 1:
```



## Optimize your learning 
<!-- * this section is optional and may not be included in all challenges.
* Use this to drive reflection, code refactoring, code review, group discussion. 
* Include directives to revisit Learning Outcomes and validate learning.
 -->
## Resources
<!-- * Links to all resources needed for this challenge
 -->
