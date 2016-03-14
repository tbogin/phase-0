# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: One string from the array
# Steps:
#Set class state within the initialize method
#Create roll method that returns a random string from the array of strings argument


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Empty array") if labels.length == 0
    @labels = labels #labels is an array
    @sides = labels.length #Define instance variable for sides in initialize method, then return instance variable in sides method
  end

  def sides
    @sides
  end

  def roll #sample method in class Array returns a random array item. Sample can take an interger argument if you want to return more than one item
    @labels.sample
  end
end
string_die = Die.new(["Ted","Bob","Linda","Brandon","Carol","Gus"])
p string_die.sides
p string_die.roll

=begin My original die class for reference
class Die
  def initialize(sides)
    raise ArgumentError.new("Turn back! Wrong dungeon!") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..(@sides + 1))
  end
end

sixsides = Die.new(24)
p sixsides.sides
p sixsides.roll
=end

# Refactored Solution
# This time with 8 sides

class Die
  def initialize(labels)
    raise ArgumentError.new("Empty array") if labels.length == 0
    @labels = labels 
    @sides = labels.length 
  end

  def sides
    @sides
  end

  def roll 
    @labels.sample
  end
end
strings_die = Die.new(["tuna","mackerel","goldfish","clownfish","marlin","carp","bass","muskellunge"])
p strings_die.sides
p strings_die.roll


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
This die class was very similar to my first one. The main difference was I used the sample method for die2, and the rand() method for returning a value for die1. I even pasted my first die method below my initial solution for reference.

What does this exercise teach you about making code that is easily changeable or modifiable? 
This module drove home the importance of initializing instance variables within the initialize method. That way, you can use the same variables in all class methods.

What new methods did you learn when working on this challenge, if any?
I learned about the sample method, which returns a random item from an array.

What concepts about classes were you able to solidify in this challenge?
The use of instance variables throughout the class. At first, I tried using local variables in my sides and roll methods, which did not work.

=end