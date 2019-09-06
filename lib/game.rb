# frozen_string_literal: true

require_relative 'UserInterface'

class Game
  include UserInterface
  def initialize(player1, player2, board)
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def play
    1.times do
      @board.welcome
      @board.display_init_board
    end
  end
end
