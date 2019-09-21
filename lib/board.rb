# frozen_string_literal: true

class Board
  def initialize
    @grid = [%w[- - -], %w[- - -], %w[- - -]]
  end

  def draw_grid
    @grid.each { |row| puts row.join('  ') }
  end

  def mark_position(position, mark)
    case position
    when 1..3
      mark_position_top(position, mark)
    when 4..6
      mark_position_middle(position, mark)
    when 7..9
      mark_position_bottom(position, mark)
    end
  end

  def mark_position_top(position, mark)
    case position
    when 1
      @grid[0][0] = mark
    when 2
      @grid[0][1] = mark
    when 3
      @grid[0][2] = mark
    end
  end

  def mark_position_middle(position, mark)
    case position
    when 4
      @grid[1][0] = mark
    when 5
      @grid[1][1] = mark
    when 6
      @grid[1][2] = mark
    end
  end

  def mark_position_bottom(position, mark)
    case position
    when 7
      @grid[2][0] = mark
    when 8
      @grid[2][1] = mark
    when 9
      @grid[2][2] = mark
    end
  end

  def finished
    return :winner if winner?
    return :draw if draw?

    false
  end

  def winning_positions
    @grid + @grid.transpose + diagonals
  end

  def diagonals
    [
      [@grid[0][0], @grid[1][1], @grid[2][2]],
      [@grid[0][2], @grid[1][1], @grid[2][0]]
    ]
  end

  def winner?
    winning_positions.each do |winning_position|
      if winning_position.uniq.compact.length == 1 &&
         winning_position.all? { |element| element != '-' }
        return true
      end
    end
    false
  end

  def draw?
    @grid.flatten.all? { |element| element != '-' }
  end
end
