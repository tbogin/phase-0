# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Ben Sanecki ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
To write pseudocode, first identify the input and output. What 
will the method receive as an argument (input)? What will be returned (output)? 
Then outline the steps you'll need to implement to solve the problem using Array methods 
(you can view these in ruby-docs for arrays).
=end
# Input: array of numbers
# Output: sum of array items
# Steps to solve the problem.
=begin
  iterate over array items
  add items
=end
# 1. total initial solution

def sentence_maker(string)
  p string.join(" ").capitalize << "."
end

sentence_maker(["Challenge","complete"])

=begin
def sentence_maker(string)
  sentence = string[0]
  for i in 1..(string.length -1)
  sentence = sentence + " " + string[i]
  end
end
sentence_maker(["Challenge","complete"])
=end 
def total(a)
  item = 0
  for i in 0..(a.length - 1)
  item = a[i] + item
  end
  p item
end

total([2,3,4])



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution
