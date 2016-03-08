# Pad an Array

# I worked on this challenge [by myself, with: Victoria Solozrano]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, minimum delimiter, and value defaulted at nil
# What is the output? (i.e. What should the code return?) permanently modified version of the original array
# What are the steps needed to solve the problem?
#define a method
#method takes 3 inputs: array, integer, object
#return array if minimum delimiter is <= array.length
#start at array.length until min_size - 1
#push values into array at end
#end loop / iterate to next value
#return updated array
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive - return modified version of the original object
  return array if array.length >= min_size
  i = array.length
  while i <= min_size - 1 #while i < min_size
    array << value
    i += 1
  end
  array
end
p pad!([1,2,3], 5, "duck")

def pad(array, min_size, value = nil) #non-destructive - return new object
  pad_array = []
  array.each do |item|
    pad_array.push(item)
  end
  while pad_array.length < min_size
    pad_array.push(value)
  end
  pad_array
end

p pad([1,2,3], 5, "goose")


# 3. Refactored Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value) 
  end
  array
end

p pad!([1,2,3], 5, "duck")

def pad(array, min_size, value = nil)
  pad_array = array.clone
  while pad_array.length < min_size
    pad_array.push(value) 
  end
  pad_array
end

p pad([1,2,3], 5, "goose")
# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
We were, though it was tempting to include code snippets within the pseudocode.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, except our original methods were a bit more complicated than our refactored solutions,

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Yes - we were able to push correct values into new/old arrays.

When you refactored, did you find any existing methods in Ruby to clean up your code?
For the non-destructive method, .clone allowed us to set new array variable to the old array without having to push each old array item into the new array.

How readable is your solution? Did you and your pair choose descriptive variable names?
Short and sweet. Our variables seem sufficiently descriptive.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods permanently change an object, whereas non-destructive methods temporarily alter them
=end