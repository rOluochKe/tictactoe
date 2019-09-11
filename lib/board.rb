#!usr/bin/ruby

module Board
  def show
    puts @top_row
    puts @mid_row
    puts @bot_row
  end

  def show_instructions
    puts 'Welcome to terminal tic tac toe!'
    puts 'The following are the move positions you are able to make:'
    puts @instructions, ''
  end
end
