#!usr/bin/ruby
# frozen_string_literal: true

class Board
  def initialize
  @grid = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]
  ]

  @top_row = "| | | |"
  @mid_row = "| | | |"
  @bot_row = "| | | |"

  @instructions = ["|-|-|-|", "|-|-|-|", "|-|-|-|"]
  end

  def show
    puts @top_row
    puts @mid_row
    puts @bot_row
  end

  def show_instructions
    puts "Welcome to terminal tic tac toe!"
    puts "The following are the move positions you are able to make:"
    puts @instructions, ""
  end

  def check(a, b, player)
    @grid[a][b] == player
  end

  def move(position, player)
    puts "Pick a number to play"
  end

  def win(player)
    puts "Player wins!"
  end
end

#run game
ttt = Board.new
player = ["x", "y"]

ttt.show_instructions

loop do
  puts "It's Player #{player[0]}'s turn."
  input = gets.chomp
  ttt.move input, player[0]
  ttt.show
  break if ttt.win player[0]
  player[0], player[1] = player[1], player[0]
end

puts "Congrats Player #{player[0]}, you have won!"