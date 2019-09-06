# frozen_string_literal: true

require_relative 'UserInterface'

class Board
  include UserInterface
  attr_accessor :board

  def initialize
    @board = Array.new(9)
  end

  def display_init_board
    row = [
      '   ' \
        '|' \
        '   ' \
        '|' \
        '   '
    ]
    separator = '-----------'
    puts row
    puts separator
    puts row
    puts separator
    puts row
  end
end
