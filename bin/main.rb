# frozen_string_literal: true

require_relative '../lib/game'

board = Board.new
player_one = Player.new
player_two = Player.new
game = Game.new(player_one, player_two, board)
game.start
game.play