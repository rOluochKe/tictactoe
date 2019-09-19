# frozen_string_literal: true

require_relative './player'
require_relative './board'

class Game
  attr_reader :current_player, :other_player
  def initialize(player_one, player_two, board = Board.new)
    @player_one = player_one
    @player_two = player_two
    @board = board
    @current_player = @player_one
    @other_player = @player_two
  end

  def check_input
    loop do
      @input_move = gets.chomp.to_i
      return @input_move if @input_move >= 1 && @input_move <= 9

      puts 'Wrong input - Enter number between 1 and 9'
    end
  end

  def make_move
    @board.mark_position @input_move, current_player.marker
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
    @current_player
  end
end
