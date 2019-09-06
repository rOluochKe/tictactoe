# frozen_string_literal: true

require_relative 'UserInterface'

class Player
  include UserInterface
  attr_reader :symbol, :name
  def initialize(name = 'Player1', symbol = 'X')
    @symbol = symbol
    @name = name
  end
end
