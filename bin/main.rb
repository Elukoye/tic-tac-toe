require '../lib/board.rb'
$winner = nil
$current_player = "Player x"
$win_combination = [
  #vertical
 [0,1,2],[3,4,5],[6,7,8],
 #horizontal
 [0,3,6],[1,4,7],[2,5,8],
 #diagonal
 [0,4,8],[2,4,6]
]

private
def turn
  puts "#{$current_player}" 
  position = gets.chomp.to_i - 1 
  if $current_player == "Player x" 
    @board[position] = "x"
  else
    @board[position] = "o" 
  end
end

def game_over?
  win? || draw?
end
 
 def win?
  brian = false
  $win_combination.each{ |element|
   brian = [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "x" } || [@board[element[0]],@board[element[1]],@board[element[2]]].all? { |i| i == "o" }
   if brian
    $winner = @board[element[0]] 
   end
    break  if brian
  }
  
    return brian
 end

def draw?
   full? && !win?
end

def full?
  @board.all?{|token| token == "x" || token =="o"}
end

def position_taken?
   @board[position] == "x" || @board[position] == "o"
end

def valid_move?
  postion.between?(0,8) && !position_taken? 
end

def switch_player
  if $current_player == "Player x"
    $current_player = "Player o "
  else 
    $current_player = "Player x"
  end 
end

#game logic is here
public
def game_loop
  until game_over? do
     turn
     display
     break if win?
     switch_player  
  end 
   if $winner == "x" || $winner == "o"
    puts "Congrats #{$winner} , YOU WON!"
   elsif $winner == nil
    puts " Damn ,its a draw!"
    puts " PLAY AGAIN?"
   end
end


game = Board.new 
game.instruction 
game.game_loop
