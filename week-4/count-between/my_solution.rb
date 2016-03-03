# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#return list_of_integers.length
#attach a variable to integers.length
#iterate through the array and exclude numbers < 2 and numbers > 6


def count_between(list_of_integers, lower_bound, upper_bound)
  array = []
  i = 0
  while i < list_of_integers.length
    if list_of_integers[i] < lower_bound || list_of_integers[i] > upper_bound
      i += 1
      next
    end
    array << list_of_integers[i]
    i += 1
  end
  array.length
end

p count_between([1,3,5],2,6)

#i = 0
# while i < array.length
# Return (array.length - array[i]) if array[i] < 2 || array[i] > 6
# i += 1

#  Or: Return (array.length - array_up - array_down)
#   Where above, array_up = 6; array_down = 2



=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers.length == 0
  return 0 if upper_bound < lower_bound
  i = 0
  while list_of_integers[i] >= 2 && list_of_integers[i] <= 6
    list_of_integers.length
    i += 1
  end
  list_of_integers.length
end
p count_between([1,3,5], 2, 6)
=end

=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers.length == 0
  return 0 if upper_bound < lower_bound
  i = list_of_integers.length
  while i > 2 && while i < 6
    return i
  end
end
=end
  
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers.length == 0
  return 0 if upper_bound < lower_bound
  i = 0
  list_of_integers.length unless list_of_integers[i] < 2 && list_of_integers[i] > 6
  
end

p count_between([1,3,5], 2, 6) 
=end


=begin
I want the number of integers within the array, minus numbers falling out of bounds.
If the array is [1,3,5], the lower bound is 2, and upper bound is 6, I want my method to return 2, bc 1 is outside lower bound.
I want array.length excluding [i] out of bounds.

i = list_of_integers.length
while i > 2 && i < 6
  return i
=end