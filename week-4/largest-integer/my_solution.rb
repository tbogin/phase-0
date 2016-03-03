# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  largest = list_of_nums[0]
  i = 0
  while i < list_of_nums.length
    largest = list_of_nums[i] if list_of_nums[i] > largest #checks if next item is > largest
    p largest
    i += 1
  end 
  
  largest
end
p largest_integer([4, 8, -6])
=begin
Method's parameter represents an entire array, not its individual items.
Before iteration begins, variable largest is assigned to the first item within the array
Before iteration begins, variable i is assigned to the first index position within the array
while true: the condition that index number (i) doesn't surpass the array length, which is number of spots within array
  largest is assigned to a number if that number is greater than largest
  Index number increments by 1 until it's < array.length
After loop, return largest

I think this means that largest goes through the array items, is stopped at the greatest value, to which it is assigned
  If there is a number in the array greater than largest, largest moves there, and keeps moving through greater numbers until it hits the largest
Also, array items represented by paramater-name[index number]
=end