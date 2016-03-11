# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

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

# 3. Refactored Solution

#My initial solution may be as simple as it gets.
#I knew about rand() from researching other methods, and previously learned about classes on Code Academy and RubyMonk




# 4. Reflection
=begin

What is an ArgumentError and why would you use one?

An argument error is an error message that is raised when the wrong number of arguments are used when a method is called

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used rand(), and a range of numbers, for the first time in DBC. Used together, they were successful in rolling the dice.

What is a Ruby class?

A blueprint for objects - classes contain methods and variables that are present within any object initialized from that class

Why would you use a Ruby class?

If I wanted to make many objects with the same properties

What is the difference between a local variable and an instance variable?

Local variables are only present within their method. Instance variables, created at the top of the class, can be used in any method within that class

Where can an instance variable be used?

Any method within the class	

=end