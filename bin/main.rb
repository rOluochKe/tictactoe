#!usr/bin/ruby
# frozen_string_literal: true

load 'lib/board.rb'
load 'lib/players.rb'
load 'lib/game.rb'

module UserInterface
  def welcome
    puts 'Welcome to Tic Tac Toc Game!'
  end

  def turns
    puts "#{CurrentPlayer} is your turn."
  end

  def showwinner
    puts "The Winner is #{WinnerPlayer}."
  end

  def draw
    puts 'The game is draw.'
  end

  def error
    puts 'Invalid entry. Try Again!'
  end

  def newplayer
    @name = gets.chomp.to_s
    @symbol = gets.chomp.to_i
    puts "Your name is #{@name}"
  end
end

board = Board.new
player1 = Player.new('PL1', 'X')
player2 = Player.new('PL2', 'O')
newgame = Game.new(player1, player2, board)
newgame.play
