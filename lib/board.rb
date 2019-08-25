class Board
  attr_accessor :board, :win_combination
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @win_combination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
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
  
  def full?
  @board.all?{|token| token == "x" || token =="o"}
  end

  def draw?
    full? && !win?
  end

  def position_taken? #class game
    @board[position] == "x" || @board[position] == "o"
  end
  
  def valid? #class game
    if position.between?(0,8)
      return true
    else 
      puts "Invalid move or input."
    end
  end

  def win?
  default = false
  @win_combination.each{ |element|
   brian = [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "x" } || [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "o" }
   if brian
    $winner = @board[element[0]] 
   end
    break  if brian
  }
  
    return default
  end
end 
  


  




