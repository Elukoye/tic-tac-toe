require_relative 'board.rb'

class Players
  attr_accessor :name, :piece
  def initialize
    @name = name
    @piece = piece  
  end
 
  def start_game
    puts "Welcome to TIC-TAC-TOE"
   loop do
    puts "Input name: "
    @name = gets.chomp.capitalize
    puts "choose x or o"
    @piece =gets.chomp.downcase
    
    value = ["x","o"]
    if @piece == value[0]
      puts "#{@name} is #{@piece}"
    elsif @piece == value[1]
      puts "#{@name} is #{@piece}"
      puts "Lets play"
      break
    else 
      puts "Invalid choice, choose X OR O!"
    end
  end
  end
end

board = Board.new
game = Players.new
game.start_game
board.display