# frozen_string_literal: true

require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'should initialize as Board class' do
      expect(board.class).to eql(Board)
    end
  end

  describe '#draw_board' do
    it 'puts a mark in the right position' do
      expect(board.mark_position(1, 'X')).to eql('X')
    end
  end

  describe '#winner?' do
    context 'when same values are on horizontal lines' do
      it 'returns true for first horizontal line' do
        @grid = board.mark_position(1, 'X')
        @grid = board.mark_position(2, 'X')
        @grid = board.mark_position(3, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for first horizontal line' do
        @grid = board.mark_position(4, 'X')
        @grid = board.mark_position(5, 'X')
        @grid = board.mark_position(6, 'X')
        expect(board.winner?).to eql(true)
      end
    end
  end
end
