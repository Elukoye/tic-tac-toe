class Board
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end

  def display
    puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |"
    puts "| #{@board[3]} | #{@board[4]} | #{@board[5]} |"
    puts "| #{@board[6]} | #{@board[7]} | #{@board[8]} |"  
  end

  def instruction
    puts "Welcome to Tic Tac Toe!"
    puts "Choose a number between 1-9: "
  end
end 
  


  




