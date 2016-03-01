# Leap Years

# I worked on this challenge [by myself, with: Esther Leytush].


# Your Solution Below

def leap_year?(year)
 return false if year % 4 != 0
 
 if year % 100 != 0
   true
 elsif year % 400 == 0
   true
 elsif year % 100 == 0 && year % 400 != 0
   false
 end
end



# if year is NOT % 4 == 0, return false 
# if year is NOT divisible by 100
#    return true
# if year is divisible by 400
#    return true 
# if year is divisible by 100 and NOT 400
#    return false

=begin
In the my_solution.rb file: 

Create a method leap_year? that accepts an integer representing a year as input.

It should return true if the year input is a leap year and false otherwise.

For example,

leap_year?(2000) # => true
leap_year?(2001) # => false

=end