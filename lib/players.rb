# frozen_string_literal: true

module Players
  class Player
    attr_reader :symbol, :name
    def initialize(symbol, name)
      @symbol = symbol
      @name = name
    end
  end
end
