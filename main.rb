class Board
  def initialize
      @grid = [
          ["1","2","3"],
          ["4","5","6"],
          ["7","8","9"]
      ]
      @top_row = "| | | |"
      @mid_row = "| | | |"
      @bot_row = "| | | |"
      @instructions = ["|1|2|3|","|4|5|6|","|7|8|9|"]
  end
  def show
      puts @top_row
      puts @mid_row
      puts @bot_row
  end
  def show_instructions
      puts "Let's play tic tac toe!"
      puts "You are able to make:"
      puts @instructions, ""
  end
  def check(a,b,player)
      @grid[a][b] == player
  end

  def move(position,player)
    case position
    when "1"
          @grid[0][0] = player
          @top_row[1] = player
    when "2"
          @grid[0][1] = player
          @top_row[3] = player
    when "3"
          @grid[0][2] = player
          @top_row[5] = player
    when "4"
          @grid[1][0] = player
          @mid_row[1] = player
    when "5"
          @grid[1][1] = player
          @mid_row[3] = player
    when "6"
          @grid[1][2] = player
          @mid_row[5] = player
    when "7"
          @grid[2][0] = player
          @bot_row[1] = player
    when "8"
          @grid[2][1] = player
          @bot_row[3] = player
    when "9"
          @grid[2][2] = player
          @bot_row[5] = player
    end
  end

  def win(player)
          #horizontal wins
  return true if (0..2).all? { |i| check(0, i, player) }
  return true if (0..2).all? { |i| check(1, i, player) }
  return true if (0..2).all? { |i| check(2, i, player) }
  #vertical wins
  return true if (0..2).all? { |i| check(i, 0, player) }
  return true if (0..2).all? { |i| check(i, 1, player) }
  return true if (0..2).all? { |i| check(i, 2, player) }
  #diagonal wins
  return true if (0..2).all? { |i| check(i, i, player) }
  return true if (0..2).all? { |i| check(i, 2 - i, player) }
  end
end
game = Board.new
player = ["x","o"]
game.show_instructions
loop do
  puts "Its player #{player[0]}'s turn'"
  input = gets.chomp
  game.move input, player[0]
  game.show
  break if game.win player[0]
  player[0], player[1] = player[1], player[0]
end
puts "Congrats Player #{player[0]}, you have won!"