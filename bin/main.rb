#!usr/bin/ruby
# frozen_string_literal: true

require "./lib/board"
require "./lib/player"
# require "./lib/play"

class Main
  def initialize
    board = Board.new
    player = Player.new
    # play = Play.new
  end
end

#run game
ttt = Main.new
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