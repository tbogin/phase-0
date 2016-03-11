# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer.
# What is the output? (i.e. What should the code return?) A string of digits and commas
# What are the steps needed to solve the problem?
#Take integer
#Convert integer to string
#Split string into an array with one character per space
#Iterate through array in reverse
#Insert "," into indexes divisible by 3
#Iterate through array, printing each item with white space removed

#Initial solution

def separate_comma(integer) #running this program gets me an array of each integer.to_s. See below for reconsidered approach
  new_array = []
  integer.to_s.split(//).each{|n| new_array << n} 
end
p separate_comma(10000)
#I was trying to use the insert method. When that didn't get me past an array of numbers.to_s, I just took it out of the method

# 2. Refactored Solution

#Pseudocode take 2

#Define your method with an integer parameter
#Convert your integer to a string
#Reverse your string of numbers, and split them into an array, with each array item being one number from your integer
#Slice your array items (numbers) into groups of three, as you want to insert a comma between every three numbers
#Rejoin with commas your groups of 3 numbers, and re-reverse them
#Return string of numbers, with a comma separating every group of 3 numbers

def separate_comma(integer)
  comma_array = []
  array_of_strings = integer.to_s.reverse.split(//)
  array_of_strings.each_slice(3){|triple_digits| comma_array << triple_digits}
  comma_array = comma_array.map{|numbers| numbers.join}
  comma_array.join(",").reverse
end
p separate_comma(10000)

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
At first, I was deadset on using the insert method, and iterate in reverse in order to place a comma every 3 characters within the integer.to_s
This didn't work, so I had to reconsider my approach. I knew I had to insert a comma every 3 numbers, going backward. Finding the each_slice method was my eureka moment.

Was your pseudocode effective in helping you build a successful initial solution?
The second time around. My brain is broken, though.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
insert - though it didn't help, each_slice, map, split(//)

How did you initially iterate through the data structure?
I tried doing it in reverse, but with the wrong methods

Do you feel your refactored solution is more readable than your initial solution? Why?
It actually works, though it's a bit longer
=end