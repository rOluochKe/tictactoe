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
        board.mark_position(1, 'X')
        board.mark_position(2, 'X')
        board.mark_position(3, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for second horizontal line' do
        board.mark_position(4, 'X')
        board.mark_position(5, 'X')
        board.mark_position(6, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for third horizontal line' do
        board.mark_position(7, 'X')
        board.mark_position(8, 'X')
        board.mark_position(9, 'X')
        expect(board.winner?).to eql(true)
      end
    end

    context 'when not same values are on horizontal lines' do
      it 'returns false for first horizontal line' do
        board.mark_position(1, 'X')
        board.mark_position(2, 'X')
        board.mark_position(3, 'O')
        expect(board.winner?).to eql(false)
      end

      it 'returns false for second horizontal line' do
        board.mark_position(4, 'X')
        board.mark_position(5, 'X')
        board.mark_position(6, 'O')
        expect(board.winner?).to eql(false)
      end

      it 'returns false for third horizontal line' do
        board.mark_position(7, 'X')
        board.mark_position(8, 'X')
        board.mark_position(9, 'O')
        expect(board.winner?).to eql(false)
      end
    end

    context 'when same values are on vertical lines' do
      it 'returns true for first vertical line' do
        board.mark_position(1, 'X')
        board.mark_position(4, 'X')
        board.mark_position(7, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for second vertical line' do
        board.mark_position(2, 'X')
        board.mark_position(5, 'X')
        board.mark_position(8, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for third vertical line' do
        board.mark_position(3, 'X')
        board.mark_position(6, 'X')
        board.mark_position(9, 'X')
        expect(board.winner?).to eql(true)
      end
    end

    context 'when not same values are on vertical lines' do
      it 'returns false for first vertical line' do
        board.mark_position(1, 'X')
        board.mark_position(4, 'X')
        board.mark_position(7, 'O')
        expect(board.winner?).to eql(false)
      end

      it 'returns false for second vertical line' do
        board.mark_position(2, 'X')
        board.mark_position(5, 'X')
        board.mark_position(8, 'O')
        expect(board.winner?).to eql(false)
      end

      it 'returns false for third vertical line' do
        board.mark_position(3, 'X')
        board.mark_position(6, 'X')
        board.mark_position(9, 'O')
        expect(board.winner?).to eql(false)
      end
    end

    context 'when same values are on diagonal lines' do
      it 'returns true for first diagonal line' do
        board.mark_position(1, 'X')
        board.mark_position(5, 'X')
        board.mark_position(9, 'X')
        expect(board.winner?).to eql(true)
      end

      it 'returns true for second diagonal line' do
        board.mark_position(3, 'X')
        board.mark_position(5, 'X')
        board.mark_position(7, 'X')
        expect(board.winner?).to eql(true)
      end
    end

    context 'when not same values are on diagonal lines' do
      it 'returns false for first diagonal line' do
        board.mark_position(1, 'X')
        board.mark_position(5, 'X')
        board.mark_position(9, 'O')
        expect(board.winner?).to eql(false)
      end

      it 'returns false for second diagonal line' do
        board.mark_position(3, 'X')
        board.mark_position(5, 'X')
        board.mark_position(7, 'O')
        expect(board.winner?).to eql(false)
      end
    end
  end

  describe '#draw?' do
    context 'when the board is full' do
      it 'returns true when all values a filled up' do
        board.mark_position(1, 'X')
        board.mark_position(2, '0')
        board.mark_position(3, 'x')
        board.mark_position(4, '0')
        board.mark_position(5, 'X')
        board.mark_position(6, 'O')
        board.mark_position(7, '0')
        board.mark_position(8, 'X')
        board.mark_position(9, 'O')
        expect(board.draw?).to eql(true)
      end

      it 'returns false when all values not filled up' do
        board.mark_position(1, 'X')
        board.mark_position(2, '-')
        board.mark_position(3, 'x')
        board.mark_position(4, '0')
        board.mark_position(5, '-')
        board.mark_position(6, 'O')
        board.mark_position(7, '-')
        board.mark_position(8, 'X')
        board.mark_position(9, '-')
        expect(board.draw?).to eql(false)
      end
    end
  end
end
