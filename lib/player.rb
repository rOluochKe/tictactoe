#!usr/bin/ruby

module Player
  def check(a, b, player)
    @grid[a][b] == player
  end

  def move(position, player)
    case position
    when 'tl'
      @grid[0][0] = player
      @top_row[1] = player
    when 'tc'
      @grid[0][1] = player
      @top_row[3] = player
    when 'tr'
      @grid[0][2] = player
      @top_row[5] = player
    when 'ml'
      @grid[1][0] = player
      @mid_row[1] = player
    when 'mc'
      @grid[1][1] = player
      @mid_row[3] = player
    when 'mr'
      @grid[1][2] = player
      @mid_row[5] = player
    when 'bl'
      @grid[2][0] = player
      @bot_row[1] = player
    when 'bc'
      @grid[2][1] = player
      @bot_row[3] = player
    when 'br'
      @grid[2][2] = player
      @bot_row[5] = player
    end
  end

  def win(player)
    #horizontal wins
    return true if (0..2).all? { |i| check(0, i, player) }
    return true if (0..2).all? { |i| check(1, i, player) }
    return true if (0..2).all? { |i| check(2, i, player) }
    #vertical wins
    return true if (0..2).all? { |i| check(i, 0, player) }
    return true if (0..2).all? { |i| check(i, 1, player) }
    return true if (0..2).all? { |i| check(i, 2, player) }
    #diagonal wins
    return true if (0..2).all? { |i| check(i, i, player) }
    return true if (0..2).all? { |i| check(i, 2 - i, player) }
  end
end
