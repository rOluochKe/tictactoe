# frozen_string_literal: true

require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:board) { Board.new }
  let(:player_one) { Player.new }
  let(:player_two) { Player.new }
  let(:game) { Game.new(:player_one, :player_two, :board) }
  let(:current_player) { :player_one }

  describe '#initialize' do
    it 'should initialize as Game class' do
      expect(game.class).to eql(Game)
    end
  end

  describe '#switch_players' do
    context 'when switch player is called' do
      it 'change the current player for the next one' do
        expect(game.send(:switch_players)).to eql(:player_two)
      end
    end
  end

  describe '#check_input' do
    context 'when a right position is typed' do
      it 'accept the input and mark the position' do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('1\n')
        expect(game.send(:check_input)).to eq(1)
      end
    end
  end
end
