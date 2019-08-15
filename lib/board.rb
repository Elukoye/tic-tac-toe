class Board
  #initilaize an array of strings
  def initialize
    @cells = [ "1","2","3","4","5","6","7","8","9" ]

    #use array indices in cells to lay out the board
    @top = "| #{@cells[0]} | #{@cells[1]} | #{@cells[2]} |"
    @mid = "| #{@cells[3]} | #{@cells[4]} | #{@cells[5]} |"
    @bot = "| #{@cells[6]} | #{@cells[7]} | #{@cells[8]} |"
  end

  #method that displays board to the user
  def display
    puts  @top
    puts  @mid 
    puts  @bot
  end

  #checks if board is empty
  def is_empty?
    @cells.any?{|token| true if token == " "} 
  end

  #checks if board is full
  def is_full?
    @cells.all?{|token| token == "x" || token == "o"}
  end

  #lays out the winning combinations 
  def winning_combinations
    #vertical_win
    @vertical_win = [[1,2,3],[4,5,6],[7,8,9]]
    #horizontal_win
    @horizontal_win = [[1,4,7],[2,5,8],[3,6,9]]
    #diagonal_win
    @diagonal_win = [[1,5,9],[3,5,7]]
  end 
end