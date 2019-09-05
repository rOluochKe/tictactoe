# frozen_string_literal: true

module UserInterface
  def welcome
    puts 'Welcome to Tic Tac Toe Game!'
  end

  def turns 
    puts "#{CurrentPlayer} is your turn."
  end

  def showwinner
    puts "The Winner is #{WinnerPlayer}."
  end

  def draw
    puts "The game is draw."
  end

  def error
    puts "Invalid entry. Try Again!"
  end
end
