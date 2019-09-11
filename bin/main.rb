#!usr/bin/ruby
require_relative '../lib/player.rb'

module Board
  def show
    puts @top_row
    puts @mid_row
    puts @bot_row
  end

  def show_instructions
    puts 'Welcome to terminal tic tac toe!'
    puts 'The following are the move positions you are able to make:'
    puts @instructions, ''
  end
end

class Main
  include Board
  include Player
  def initialize
    @grid = [%w[tl tc tr], %w[ml mc mr], %w[bl bc br]]

    @top_row = '| | | |'
    @mid_row = '| | | |'
    @bot_row = '| | | |'

    @instructions = %w[|tl|tc|tr| |ml|mc|mr| |bl|bc|br|]
  end
  def createplayers
    @player = %w[x y]
  end
end

# run game
ttt = Main.new
player = ttt.createplayers

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
