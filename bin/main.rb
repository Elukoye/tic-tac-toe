require_relative '../lib/board.rb'

class GameLogic
  def initialize
    @current_player ="Player x"
    @winner = nil
  end 

  def turn
    puts "#{@current_player}" 
    position = gets.chomp.to_i - 1 
    if @current_player == "Player x" 
      @board[position] = "x"
    else
      @board[position] = "o" 
    end
  end 

  def game_over? 
    @boar.win? || @board.draw?
  end

  
  def switch_player 
    if @current_player == "Player x"
       @current_player = "Player o "
    else 
      @current_player = "Player x"
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
     if @winner == "x" || @winner == "o"
      puts "Congrats #{$winner} , YOU WON!"
     elsif @winner == nil
      puts " Damn ,its a draw!"
      puts " PLAY AGAIN?"
     end
  end
end

game = Board.new
game.instruction
game.display 
game.game_loop
