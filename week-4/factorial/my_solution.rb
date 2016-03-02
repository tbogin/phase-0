# Factorial

# I worked on this challenge [with: Ben Sanecki].


# Your Solution Below

def factorial(number)
  total = 1
  while number > 0
  total = number * total
  number -= 1
  end
  p total
end
factorial(3)


=begin
def factorial(number)
  array = []
  while number > 0
  array.push(number)
  number -= 1  
end
end
p factorial(3)
=end
=begin
def factorial(number)
  if number == 0
    return 1
  else
    number.downto(1).reduce(:*)
  end
end
p factorial(0)
=end
=begin
def factorial(number)
 number.downto(1).reduce(:*)
end
p factorial(3)
=end

=begin
Pseudocode
A factorial is the product of all your integers from 1 to the highest integer.
0! == 1 (because 1*1)
If your argument is n, the code will need to multiply n by n-1, n-2, ... 1 
=end