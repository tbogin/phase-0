# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer.
# What is the output? (i.e. What should the code return?) A string of digits and commas
# What are the steps needed to solve the problem?
#Convert integer to a string
#Insert comma behind a digit if there are 3 digits behind it - iterate in reverse
  #array.insert(0 = spot in array, 1 = object to be inserted at spot 0)
#If array.length == 4, insert comma after array[0]
#If array.length > 4, insert comma after array[0], and then after every 3 items
#Print array items without spaces, in string form


# 1. Initial Solution

=begin
def separate_comma(integer)
  i = 0
  while i < integer.to_s.length
  integer.to_s.insert(i, ",") if integer[-i] % 3 == 0
  i += 1
  end
  integer.to_s
end
p separate_comma(10000)
=end

def separate_comma(integer)
  i = integer.to_s.length
  until i == 0
  integer.to_s.insert(i, ",") if integer.to_s[i] % 3 == 0
    i -= 0
  end
  integer.to_s
end
p separate_comma(10000)

# 2. Refactored Solution

def separate_comma(integer)
  chars_array = []
  integer.to_s.reverse.chars.each_slice(3){|group| chars_array << group.join}
  chars_array.join(",").reverse
end
p separate_comma(10000)

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
At first, I was deadset on using the insert method, and iterate in reverse in order to place a comma every 3 characters within the integer.to_s

Was your pseudocode effective in helping you build a successful initial solution?
After a while

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
insert, each_slice

How did you initially iterate through the data structure?
I tried doing it in reverse

Do you feel your refactored solution is more readable than your initial solution? Why?
It's definitely shorter
=end