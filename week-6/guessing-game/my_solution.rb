# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: class GuessingGame
# Output: GuessingGame object
# Steps:
#complete initialize method by assigning an instance variable to the initialize argument
#Define a guessing method that compares its parameter to 'answer,' and returns high, low, or correct depending on its value
#Define a solved? method that returns true if your guess was correct, and false otherwise

# Initial Solution

class GuessingGame
  attr :answer, :solved
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(number)
      @solved = false
      return :high if number > @answer
      return :low if number < @answer
      @solved = true
      return :correct if number == @answer
  end
  
  def solved?
    @solved
  end

end
guessing = GuessingGame.new(155)
p guessing.guess(15)
p guessing.solved?
# Refactored Solution

class GuessingGame
  attr :answer, :solved
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(number)
      @solved = false
      return :high if number > @answer
      return :low if number < @answer
      @solved = true
      return :correct if number == @answer
  end
  
  def solved?
    @solved
  end

end
good = GuessingGame.new(155)
p good.guess(155)
p good.solved?




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  #Instance variables represent a class' state of being, aka the contents of the instances of that class. Methods represent a class' behavior, aka what an instance of that class can do.

# When should you use instance variables? What do they do for you?
  #Instance variables should be used in instance methods, as their initiation value remains the same throughout instance methods

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  #Flow control is returning different values based on the conditions that you set. I thought the flow control needed for this class was simple, but it took me a few tries to write methods that worked.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  #Symbols were required for this challenge because they are unique and immutable. That's beneficial, as they can't be destroyed with methods.