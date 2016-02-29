#Full name greeting method

puts "What is your first name?"
first = gets.chomp.capitalize
puts "What is your middle name?"
middle = gets.chomp.capitalize
puts "What is your last name?"
last = gets.chomp.capitalize
puts "Hello, #{first} #{middle} #{last}."

# Bigger, better number method

puts "What is your favorite number?"
fave = gets.chomp
bigger = fave.to_i + 1
puts "You're thinking small! How about #{bigger}?!"

# Module links
https://github.com/tbogin/phase-0/tree/master/week-4/math
https://github.com/tbogin/phase-0/tree/master/week-4/address
https://github.com/tbogin/phase-0/tree/master/week-4/define-method

=begin
Reflection

How do you define a local variable?
type: variable-name = "Object name"
The local variable is named on the left of =, and the object it's assigned to is put on the right

How do you define a method?
type: 
def method-name(optional parameters) do
  code block here
end

def keyword denotes a method. The method name is how you call your method.
Parameters are replaced by arguments (values instead of placeholders) when method is called.
do and end define the area for a method's code block, which contains the method's commands.

What is the difference between a local variable and a method?

A method can be called anywhere. A local variable can only be called within its own program.

How do you run a Ruby program from the command line?
type: ruby file-name.rb

How do you run an RSpec program from the command line?
type: rspec file-name.rb

What was confusing about this material? What made sense?
This was a nice recap of the Code Academy tutorials I studied to be accepted into DBC. So far, nothing has been too confusing.
=end