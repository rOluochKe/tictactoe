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

  def start
    puts 'TIC TAC TOE'
    @board.draw_grid
    puts '-----------'
    puts 'Player One'
    @player_one.choose_name
    @player_two.choose_marker
    puts '-----------'
    puts 'Player Two'
    @player_two.choose_name
    if @player_one.marker = 'x'
      @player_two.marker = 'o'
    else
      @player_two.marker = 'x'
    end
  end

  def play
    while true
      @board.draw_grid
      puts '-----------'
      puts "#{current_player.name}'s turn"
      puts '-----------'
      ask_move
      check_input
      check_position_free
      make_move
      if @board.finished
        game_over
        @board.draw_grid
        return false
      else
        switch_players
      end
    end
  end

  def ask_move
    puts 'Choose a number between 1 and 9 to mark a position'
  end

  def check_input
    loop do
      @input_move = gets.chomp.to_i

      return @input_move if @input_move >= 1 && @input_move <= 9

      puts 'Wrong input - Enter number between 1 and 9'
    end
  end

  def check_position_free
    puts @board.position_free?(@input_move)
    if @board.position_free?(@input_move)
      @input_move
    else
      puts 'Position Taked - Enter a different number between 1 and 9'
      check_input
    end
  end

  def make_move
    @board.mark_position @input_move, current_player.marker
  end

  def game_over
    puts "#{current_player.name} is the winner!" if @board.finished == :winner
    puts 'Draw!' if @board.finished == :draw
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end
end
