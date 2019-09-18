# frozen_string_literal: true

class Player
  attr_accessor :marker
  attr_accessor :name

  def choose_name
    self.name = gets.chomp
  end

  def choose_marker
    self.marker = gets.chomp.downcase
    validate_marker
  end

  def validate_marker
    choose_marker if marker != 'x' && marker != 'o'
  end
end
