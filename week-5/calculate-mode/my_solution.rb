# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Esther Leytush ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array
# What is the output? new array containing the mode (most repeated num, or every num that has been repeated)
# What are the steps needed to solve the problem?
# => initialize new array 'repeated_nums' as empty
# => iterate over given array using each,
# =>  push value from given array into repeated_nums array if 
# =>    they repeat in given array
# =>  create variable called 'highest_repetition'
# =>  iterate over repeated nums array with each, checking how many times a given 
# =>        num repeats, and if that repetition is greater than highest_repetition,
# =>        highest_repetition gets that frequency
# =>  return array with nums whose array.count equals highest_repetition


# 1. Initial Solution

def mode(array)
  repeated_nums = []
  array.each do |item|
    if array.count(item) > 1
      repeated_nums << item
    end
  end
  highest_rep = 0
  repeated_nums.each do |num|
    if repeated_nums.count(num) > highest_rep
      highest_rep = repeated_nums.count(num)
    end
  end
  return_array = []
  repeated_nums.each do |num|
    if repeated_nums.count(num) == highest_rep && !return_array.include?(num)
      return_array.push(num)
    end
  end
  return_array
end



# 3. Refactored solution


def mode(array)
  counter = Hash.new(0)
  array.each do |item|
    counter[item] += 1
  end
  
  mode_array = []
  counter.each do |key, value|
    if value == counter.values.max
      mode_array << key
    end
  end
  
  mode_array
end

p mode([1,2,2,2,2])


def mode(array)
  counter = array.group_by {|item| item.itself}
  counter.each {|k, v| counter[k] = v.length}
  counter = counter.sort_by{|key, value| value}
  mode = counter.last[1]
  items = counter.select{|group| group[1] == mode}
  items.map{|group| group[0]}
end

mode([1, 1, 2, 2, 3])

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We passed numbers into different arrays, except for one of our refactored solutions, where we also used a hash.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

Yes!

What issues/successes did you run into when translating your pseudocode to code?

It's still a bit difficult to pseudocode without using too much actual code. But explaining your process in words is very useful.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

sort_by, count, values, max, each, last, group_by, select. It's difficult to synthesis how all these methods work together.
=end