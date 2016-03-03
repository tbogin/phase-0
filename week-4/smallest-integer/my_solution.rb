# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  smallest = list_of_nums[0]
  i = 0
  while i < list_of_nums.length
    smallest = list_of_nums[i] if list_of_nums[i] < smallest
    i += 1
  end
  
  smallest
end

p smallest_integer([-1, 1,2,3])

=begin
Parameter list_of_nums represents an array. Not the contents of an array.
smallest is a local variable that begins the loop pointing to the first item (at index 0) in the array
i is a local variable that begins the loop by pointing to the first spot (index 0) in the array
while true condition: Here the true condition for the while loop is that the index (i) is within the scope of the array
  smallest (integer) is at a certain index (list_of_nums[i]) if the value at that index is less than smallest
  i increments by 1 until it hits list_of_nums.length
  
After the while loop ends, smallest is returned
=end