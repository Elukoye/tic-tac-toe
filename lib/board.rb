class Board
  attr_accessor :board
  def initialize
    @board =(1..9).to_a
  end  

  def display
    @board.each do |i| 
      print " | " + i.to_s
      if i % 3 == 0 
        print " | \n" 
      end 
    end
  end
end
  


  




