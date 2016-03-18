class Bingo
  
  def initialize(board)
    @bingo_board = board
  end
  
def letter_number(letter_array)
    letter = letter_array.sample
    @bingo_number = letter + rand(1..100).to_s
    @bingo_integer = @bingo_number.chars.drop(1).join.to_i
    @bingo_number
end

 def bingo_check
    if @bingo_number.start_with?("B")
      @bingo_board.each{|n| @bingo_board[0][n] = "X" if n == @bingo_integer}
    elsif @bingo_number.start_with?("I")
      @bingo_board.each{|n| @bingo_board[1][n] = "X" if n == @bingo_integer}
    elsif @bingo_number.start_with?("N")
      @bingo_board.each{|n| @bingo_board[2][n] = "X" if n == @bingo_integer}
    elsif @bingo_number.start_with?("G")
      @bingo_board.each{|n| @bingo_board[3][n] = "X" if n == @bingo_integer}
    elsif @bingo_number.start_with?("O")
      @bingo_board.each{|n| @bingo_board[4][n] = "X" if n == @bingo_integer}
    else 
      puts "This isn't bingo."
    end
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2] 
    p @bingo_board[3]
    p @bingo_board[4]
 end
 

end

bongo = Bingo.new([
  [47, 44, 71, 8, 88], #0
  [22, 69, 75, 65, 73], #1
  [83, 85, 97, 89, 57], #2
  [25, 31, 96, 68, 51], #3
  [75, 70, 54, 80, 83] #4
  ])

 p bongo.letter_number(["B","I","N","G","O"])
 p bongo.bingo_check

#Method that checks whether column has bingo number (B43)
#Replace matched bingo numbers with X's

 

# bingo = [
#   [47, 44, 71, 8, 88], #0
#   [22, 69, 75, 65, 73], #1
#   [83, 85, 97, 89, 57], #2
#   [25, 31, 96, 68, 51], #3
#   [75, 70, 54, 80, 83] #4
#   ]
  
#   p bingo[1]
  #Match bingo number with array[0][n]
  
  
  #Checking bingo number with column
  #If the bingo number starts with B/I/N/G/O; 
  #if its number (might need to put number in array, delete first item - the letter- and join the remaining strings to_i)
  #matches a number in (for B) bingo[0][0] or bingo[1][0] or bingo[2][0] or bingo [3][0] or bingo[4][0],
  #reassign bingo_board[x][y] = "X"
  
  # p "B31".chars.drop(1).join.to_i
  
  