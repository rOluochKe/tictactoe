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
end
