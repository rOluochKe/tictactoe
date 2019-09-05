#!usr/bin/ruby
# frozen_string_literal: true

class Board
  def display_board
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

board = Board.new
board.display_board
