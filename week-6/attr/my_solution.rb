#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def name
    return "Ted"
  end
end


class Greetings
  
  def initialize
    @greeting = NameData.new
  end
  
  def hello
    puts "Hello, #{@greeting.name}"
  end

end
hey_there = Greetings.new
p hey_there.hello


# Reflection
#Relase 1
#What are these methods doing?
#The methods in release 1 establish a person's name, age, and occupation, and allow you to change any of those values.

#How are they modifying or returning the value of instance variables?
#Values are reassigned using same instance variables

#Release 2
# What changed between the last release and this release?
#attr_reader initialized age, which allows age to be called outside the class, only without the need for the previous instance method

# What was replaced?
#Class method defining age

# Is this code simpler than the last?
#attr_reader is a shortcut for an instance method

#Release 3
# What changed between the last release and this release?
#attr_writer was also assigned to age

# What was replaced?
#No class method defining age

# Is this code simpler than the last?
#Yes - it allows age to be accessed and changed outside the class without needing to write longer instance variables to do the same thing

# What is a reader method?
#A method that allows a value to be returned, but not changed, outside the class

# What is a writer method?
#A method that allows a method to be changed, but not returned, outside the class

# What do the attr methods do for you?
#attr method provide shortcuts for longer instance methods that allow you to read and/or change instance variables outside their class

# Should you always use an accessor to cover your bases? Why or why not?
#It can often be useful, but it's good to be careful about overdoing attr_accessor, as you don't always want your variables to be changed

# What is confusing to you about these methods?
#At first, I was bothered that attr methods don't look like other methods, but I'm okay with that now.