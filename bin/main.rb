#!usr/bin/ruby
# frozen_string_literal: true

load 'lib/board.rb'
load 'lib/players.rb'
load 'lib/game.rb'

board = Board.new
player1 = Player.new('PL1', 'X')
player2 = Player.new('PL2', 'O')
newgame = Game.new(player1, player2, board)
newgame.play
