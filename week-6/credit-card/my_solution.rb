# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Ban Sanecki].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number, within class CreditCard
# Output: validation of credit card (true or false)
# Steps:
#Starting with the second to last digit, double every other digit until you reach the first digit.
#Create instance method to do this
# => starting with 2, double every other digit until reaching 1
# => each_slice(2)?

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
# => Iterate through all digits, and split/join all numbers with length greater than 1
# => Sum all numbers using inject method

# If the total is a multiple of ten, you have received a valid credit card number!
#Create instance method to do this
# => Check if sum of all numbers is a multiple of 10

# Initial Solution
# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(number)
#     @card_number = number
#     @digit_array = []
#   end
  
#   def double
#     i = 0
#   @digit_array = @card_number.to_s.chars #This should get us an array of numbers in string form
#   #Convert array strings back to integers
#   @digit_array.map!(&:to_i)
#   for i in @digit_array.length
#     if i % 2 == 0
#       @digit_array[i] * 2
#     end
#   end
#   #If a number in the digit array has 2 digits, split that number into single digits
  
#   @digit_array.each do |number|
#     if number.count > 1
#     #If the number has 2 digits, convert to a string, split into its own array of 2 single digits, convert to integer, flatten
#     number.to_s.chars(&:to_i)
#     end
#   end
#   @digit_array.flatten!
#   end

#   def check_card
#     @valid = @digit_array.inject{|result, number| result + number}
#     if @valid % 10 == 0
#       return true
#     else 
#       return false
#     end
#   end
  

# my_card = CreditCard.new
# p my_card.every_other_number.check_card 


#Refactored solution

class CreditCard

def initialize(number)
  @card_number = number
  raise ArgumentError.new("Greater than 16") if @card_number.to_s.length > 16
  raise ArgumentError.new("Less than 16") if @card_number.to_s.length < 16
end

def check_card
  
  i = 0
  @digit_array = @card_number.to_s.chars 
   @digit_array.map!(&:to_i)
        while i < @digit_array.length
       if i % 2 == 0
       @digit_array[i] = @digit_array[i] * 2
       i += 1
       end
       i += 1
     end

     @digit_array = @digit_array.join("").chars
   @digit_array.map!(&:to_i)


     @valid = @digit_array.inject{|result, number| result + number}
     @valid % 10 == 0

 end
end
card = CreditCard.new(1234567896543219)
p card.check_card

#Reflection
# What was the most difficult part of this challenge for you and your pair?
  #Refactoring our initial solutuion. We came very close, but had to go through each line to find out what didn't work.

# What new methods did you find to help you when you refactored?
  #We used the nifty inject method in order to sum the numbers, which I wrote about for my technical blog last week
  
# What concepts or learnings were you able to solidify in this challenge?
  #The relationship between strings, fixnums, and arrays - it's still a bit frustrating to do conversions between strings and fixnums