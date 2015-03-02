class ConnectFour
  attr_reader :place, :to_s, :player1, :player2
  def initialize
    # @player1 = "X"
    # @player2 = "O"
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

  def solved?
    #horizontal win?
    @board.each do |row|
      store = ""
      row.each do |token|
        store << token
        if store.include?("XXXX") || store.include?("OOOO")
          return true
        else
          @board.transpose.each do |row|
            store = ""
            row.each do |token|
              store << token
              if store.include?("XXXX") || store.include?("OOOO")
              return true
              else
                store = ""
                (0..3).each { |x| store << @board[x][x+3] }
                (0..4).each {|x| store << @board[x][x+2] }
                (0..5).each {|x| store << @board[x][x+1] }
                (0..6).each {|x| store << @board[x][x] }
                @board2 = @board.transpose
                (0..3).each { |x| store << @board2[x][x+3] }
                (0..4).each {|x| store << @board2[x][x+2] }
                (0..5).each {|x| store << @board2[x][x+1] }
              end
            end
          end
        end
      end
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
# game.solved? = false

  while counter<50
    if counter.even? && game.solved? != true
      p game.to_s
      puts "Enter your move player 1: "
      token = gets.chomp
      position = gets.chomp
      game.place(token, position)
      p game.to_s
      p game.solved?
    elsif counter.odd? && game.solved? != true
      p game.to_s
      puts "Enter your move player 2: "
      token = gets.chomp
      position = gets.chomp
      game.place(token, position)
      p game.to_s
      p game.solved?
    end
    counter +=1
  end
puts "You finished the game!"
end


p controller





