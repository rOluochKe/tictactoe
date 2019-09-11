#!usr/bin/ruby
#rubocop: disable Style/FrozenStringLiteralComment, Lint/MissingCopEnableDirective

require './lib/board'
require './lib/player'

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
end

# run game
ttt = Main.new
player = %w[x y]

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
