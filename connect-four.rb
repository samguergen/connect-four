class ConnectFour
  attr_reader :place, :to_s, :player1, :player2
  def initialize
    @player1 = "X"
    @player2 = "O"
    @board = Array.new(7) { Array.new(7) {" "} }
  end

  def to_s
      @board.each do |row|
      # puts "|" + row + "|"
      p ("|" + row.join(" ") + "|")
    end
      p "-0 1 2 3 4 5 6-"
  end


  # def place(token, position)
  #   position = position.to_i

  #   n = -1
  #   while n > (@board.length * -1)

  #     if @board[n][position] == " "
  #       @board[n][position]= token
  #     break
  #     else
  #       # n-=1
  #       puts n
  #       @board[n-1][position]=token
  #     break
  #     end
  #     n-=1
  #   end
  # end


  def place(token, position, n=-1)
    position = position.to_i
    if n >= (@board.length * -1)

      if @board[n][position] == " "
        return @board[n][position]= token

      else
        n-=1
        place(token, position, n)
      end
    else
      puts "Not a valid move. Please pick another column."
    end
  end

end



# p game.to_s
# p game.place("O",3)
# p game.to_s
# p game.place("X",3)
# p game.to_s



def controller

counter = 0
game = ConnectFour.new
puts "Welcome to connect Four"

# solved = false
# unless solved = true
while counter<50
  if counter.even?
    p game.to_s
    puts "Enter your move player 1: "
    token = gets.chomp
    position = gets.chomp
    game.place(token, position)
    p game.to_s
  else
    p game.to_s
    puts "Enter your move player 2: "
    token = gets.chomp
    position = gets.chomp
    game.place(token, position)
    p game.to_s
  end

  counter +=1
end
end

p controller





