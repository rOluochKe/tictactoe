# frozen_string_literal: true

require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:game) { Game.new }
  let :board do
    Board.new
  end

  describe '#initialize' do
    it 'should initialize as Game class' do
      expect(game.class).to eql(Game)
    end
  end
end
