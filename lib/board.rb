#!usr/bin/ruby
# frozen_string_literal: true

class Board 
  def initialize
  @grid = [
    ["tl", "tc", "tr"],
    ["ml", "mc", "mr"],
    ["bl", "bc", "br"]
  ]

  @top_row = "| | | |"
  @mid_row = "| | | |"
  @bot_row = "| | | |"

  @instructions = ["|tl|tc|tr|", "|ml|mc|mr|", "|bl|bc|br|"]
  end

  def show
    puts @top_row
    puts @mid_row
    puts @bot_row
  end

  def show_instructions
    puts "Welcome to terminal tic tac toe!"
    puts "The following are the move positions you are able to make:"
    puts @instructions, ""
  end
end