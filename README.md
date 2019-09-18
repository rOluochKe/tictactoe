## TIC TAC TOE
This is the third project of the Main Ruby curriculum at Microverse. The goal is to Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.
* [Authors](#authors)
* [Technologies](#technologies)
* [Setup](#setup)
* [Instructions](#instructions)
* [Winnning Patterns](#winning-patterns)

## Authors
This project was contibuted by
* Raymond Oluoch https://github.com/rOluochKe/
* Andres F. Moya https://github.com/AndresFMoya/
	
## Technologies
Project is created with:
* Ruby version: 2.5.5
	
## Setup
To run this project, install it locally using npm:

```
$ clone the repo: git clone https://github.com/rOluochKe/tictactoe.git
$ change directory: cd tictactoe
$ run the program: ruby 'bin/main.rb'
```
## Instructions
Upon running the game in your commandline
* Player One: Enter your name i.e John
* Player One: choose Mark i.e X or O
* Player Two: Enter your name i.e Jane
* Player One Turns: Enter a number between 1 and 9
* Player Two: Enter a number between 1 and 9
* Continue playing until any player wins or is a draw

## Winnning Patterns
Below are some of the wining patterns, one can win if if his/her corresponding marks are 
* Horizontal 

  ```
  [x,x,x]
  [o,x,o]
  [x,o,x]
  ```
* Vertical

  ```
  [x,o,x]
  [x,o,x]
  [x,o,x]
  ```
* Diagonal 

  ```
  [o,x,x]
  [x,o,x]
  [x,o,o]
  ```