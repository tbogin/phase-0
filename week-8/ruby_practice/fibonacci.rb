# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Write a method that checks whether its argument is a fibonacci number
#After 1 and 0, a fibonacci number is the sum of the previous two fibonacci numbers (Fn = Fn-1 + Fn-2)
#A Fibonacci number can be found if (for number = x), 5x squared + 4 or 5x squared - 4 is a square number (that square number divided by its root equals the root)


# Initial Solution

# def is_fibonacci?(num)
#   true if num == 1 || num == 0
#   fib = 5*(num*num) + 4
#   nac = 5*(num*num) - 4
#   true if fib/num == num || nac/num == num 
# end

def is_fibonacci?(num)
  return true if num == 1 or num == 0
  fib = (5*num*num) + 4
  nac = (5*num*num) - 4
 
 if num == Math.sqrt((fib-4)/ 5) || num == Math.sqrt((nac+4)/ 5)
   return true
  else
    return false
 end
  
end

p is_fibonacci?(21)

# Refactored Solution







# Reflection
#Once I found the equation for determining a number was in the Fibonacci sequence, solving this challenge boiled down to figuring out how
#to represent the equation in Ruby format 