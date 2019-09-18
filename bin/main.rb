# frozen_string_literal: true

require_relative '../lib/game'
class PlayGame
  def self.start
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
    @game = Game.new(@player_one, @player_two, @board)
    @current_player = @player_one
    @other_player = @player_two

    puts "\n"
    puts 'TIC TAC TOE'

    # Start the game
    @board.draw_grid
    puts '-----------'
    puts 'Player One'
    puts "What's your name?"
    @player_one.choose_name
    puts 'Xs or Os? [options: x / o]'
    @player_one.choose_marker
    puts '-----------'
    puts 'Player Two'
    @player_two.choose_name
    @player_two.marker = @player_one.marker == 'x' ? 'o' : 'x'

    # Play the game

    loop do
      @board.draw_grid
      puts '-----------'
      puts "#{@current_player.name}'s turn"
      puts '-----------'
      puts 'Choose a number between 1 and 9 to mark a position'
      @game.check_input
      @game.make_move
      if @board.finished
        self.game_over
        @board.draw_grid
        return false
      else
        @game.switch_players
      end
    end
  end

  def self.game_over
    puts "#{@current_player.name} is the winner!" if @board.finished == :winner
    puts 'Draw!' if @board.finished == :draw
  end
end

PlayGame.start
