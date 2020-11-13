
class Board
  def initialize
    @board =(1..9).to_a
    @remval=(1..9).to_a
    @winner = nil
    @piece = ["x","o"]
  end
  
  def replace_var(position,token)
    @remval.delete(@board[position])
    @board[position] = token
  end
  
  def rem_nums
    return @remval
  end
  
  def display
    (1..9).each do |i|
      print " | " + @board[i - 1].to_s
      print " | \n" if i % 3 == 0  
    end
  end
  
def position_taken?(position)
  @board[position - 1] == "x" || @board[position - 1] == "o"
end
  
def win?
  bool_value = false
  win_combination = [
    #vertical
   [0,1,2],[3,4,5],[6,7,8],
   #horizontal
   [0,3,6],[1,4,7],[2,5,8],
   #diagonal
   [0,4,8],[2,4,6]
  ]
  win_combination.each{ |element|
   bool_value = [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "x" } || [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "o" }
   if bool_value
    @winner = @board[element[0]]
   end
    break  if bool_value
  }
    return bool_value
end
  
 def winner
   @winner
 end
  
 def full?
  @board.all?{|token| token == "x" || token =="o"}
 end
end
