require '../lib/board.rb'
class Logic
 def initialize
   @player_1 = "player_1"
   @player_2 = "player_2"
   @board = Board.new
 end
 def game_start
   puts "Welcome to TIC-TAC-TOE"
   puts " Player one input name: "
   @player_1 = gets.chomp.capitalize + " [x]"
   puts "#{@player_1} is  x"
   puts "Player two input name: "
   @player_2 = gets.chomp.capitalize + " [o]"
  puts "#{@player_2} is  o"
 end
 def take_turns(current_player)
     puts "#{current_player} ,choose one among #{@board.rem_nums}: "
     position = gets.chomp.to_i
     while true do
       if  position.between?(1,9) && !@board.position_taken?(position)
       position -= 1
       break
       else
       puts "Invalid move or input.\n try again: "
       position = gets.chomp.to_i
       end
     end
     if current_player == @player_1
     @board.replace_var(position,"x")
     else
     @board.replace_var(position,"o")
     end
     @board.display
 end
 def switchplayer(c_p)
   returnvar=''
   if   c_p == @player_1
       returnvar = @player_2
   else
       returnvar = @player_1
   end
   return returnvar
 end
 def game_loop
   game_start
   c_player = @player_2
   until false do
      c_player = switchplayer(c_player)
      take_turns(c_player)
      break if @board.win? || @board.full?
   end
    winner = @board.winner
    mshindi =''
    if winner == nil
     puts " Damn ,its a draw!!... PLAY AGAIN?"
    elsif
     if winner == "x"
       mshindi=@player_1
     else  winner == "o"
       mshindi=@player_2
     end
     puts "Congrats #{mshindi} , YOU WON!"
    end
 end
end
game=Logic.new
game.game_loop