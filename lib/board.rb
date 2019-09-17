# frozen_string_literal: true

class Board
  def initialize
    @grid = [['-','-','-'], 
            ['-','-','-'], 
            ['-','-','-']]
  end

  def draw_grid
    @grid.each{ |row| puts row.join('  ')}
  end

  def mark_position position, mark
    case position
    when '1' then @grid[0][0] = mark
    when '2' then @grid[0][1] = mark
    when '3' then @grid[0][2] = mark
    when '4' then @grid[1][0] = mark
    when '5' then @grid[1][1] = mark
    when '6' then @grid[1][2] = mark
    when '7' then @grid[2][0] = mark
    when '8' then @grid[2][1] = mark
    when '9' then @grid[2][2] = mark
    else mark_position gets.chomp, mark
    end
  end

  def position_taked? position
    return true if position != '-'
  end

  def finished
    return :winner if winner?
    return :draw if draw?
    false
  end

  def winning_positions
    @grid +
    @grid.transpose +
    diagonals
  end

  def diagonals
    [
      [@grid[0][0], @grid[1][1], @grid[2][2]],
      [@grid[0][2], @grid[1][1], @grid[2][0]]
    ]
  end

  def winner?
    winning_positions.each do |winning_position|
      return true if winning_position.uniq.compact.length == 1 && winning_position.all? { |element| element != '-' }
    end
    false
  end

  def draw?
    @grid.flatten.all? { |element| element != '-' }
  end
end