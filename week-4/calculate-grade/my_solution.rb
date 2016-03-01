# Calculate a Grade

# Create a method get_grade that accepts an average in the class and returns the letter grade as a String.
# It should only return one of 'A', 'B', 'C', 'D', and 'F'. Don't worry about + and - grades.

# For example,

# get_grade(89) # => returns "B", not "B+"
# get_grade(70) # => returns "C"

# I worked on this challenge [with Ted Bogin ].
# Your Solution Below

def get_grade(num)
 if num >= 90
 "A"
 elsif num >= 80
 "B"
 elsif num >= 70
 "C"
 elsif num >= 60
 "D"
 else 
 "F"
 end
end

### Alterative solution

def get_grade(num)
 grade_hash = {
 (90..100).to_a => "A", 
 (80..89).to_a => "B",
 (70..79).to_a => "C",
 (60..69).to_a => "D",
 (0..59).to_a => "F"
 }
  
 grade_hash.each do |key, value|
 if key.include?(num)
 return value
 end
 end
end

# Pseudocode

# if num is greater than or equal to 90, 
# return A
# elsif num is greater than or equal to 80,
# return B
# elsif num is greater than or equal to 70,
# return C
# elsif num is greater than or equal to 60,
# return D
# else 
# return f# Calculate a Grade

