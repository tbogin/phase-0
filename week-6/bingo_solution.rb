# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Convert numbers to string, and concatenate them onto the letter

# Check the called column for the number called.
  #Return true if your number matches a number on the bingo board; false otherwise

# If the number is in the column, replace with an 'x'
  #If the integer in the bingo number matches with any numbers on the row to which its letter is assigned, replace that integer with an x

# Display a column to the console
  #return each array item in the bingo board individually

# Display the board to the console (prettily)
  #return the bingo board by its instance variable

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

#Method to return letters B,I,N,G,O, and numbers 1..100: 
# --------------------------------------------------------
  def letter_number(letter_array)
    letter = letter_array.sample
    @bingo_number = letter + rand(1..101).to_s
    @bingo_integer = @bingo_number.chars.drop(1).join.to_i
    @bingo_number
  end

# ------------------------------------------------
#Method that checks whether column has bingo number (B43)
#Replace matched bingo numbers with X's

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
    @bingo_board 
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




# Refactored Solution


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

senior_center = Bingo.new([
  [47, 44, 71, 8, 88], #0
  [22, 69, 75, 65, 73], #1
  [83, 85, 97, 89, 57], #2
  [25, 31, 96, 68, 51], #3
  [75, 70, 54, 80, 83] #4
  ])

 p senior_center.letter_number(["B","I","N","G","O"])
 p senior_center.bingo_check


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  #Pseudocoding wasn't too bad for this challenge. My pseudocoding style is to verbalize the methods I'll need to solve the problem.

# What are the benefits of using a class for this challenge?
  #The class makes it easy to initialize a bingo board, and allows a one-stop method for matching bingo numbers to board numbers.

# How can you access coordinates in a nested array?
  #First access each subarray, which are indexes of the larger array, then type the index for an item within the subarray.

# What methods did you use to access and modify the array?
  #if/elsif/else, rand, sample, each, chars, drop, join, to_i

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  #drop. I used the drop method for the first time in order to get rid of the letter part of my bingo numbers. I did this in order to compare 
  #my bingo numbers with numbers on the board

# How did you determine what should be an instance variable versus a local variable?
  #Instance variables were needed in multiple methods. Local variables were used within a single method.
  
# What do you feel is most improved in your refactored solution?
  #I called my bingo_check method by printing each bingo board line individually, which gives it more the appearance of an actual board.