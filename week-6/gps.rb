# Your Names
# 1) Ted Bogin
# 2) Kelson Adams

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Your Names
# 1) Ted Bogin
# 2) Kelson Adams

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item, servings) #2 parameters: item and number of ingredients in item
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #library is a hash of desserts and serving size
  
  
  if !library.has_key?(item) 
    raise ArgumentError.new("Invalid dessert")
  end  
  
  
  req_servings = library[item] #Returns first value of the item to make key in library hash
  remaining_servings = servings % req_servings #Remaining number of dividing nuumber of ingredients and serving size
  #if remaining servings is > 0 && < 5, add message that you have x extra cookies
  #elsif remaining servings is > 5 but < 7, you have x extra cakes and x extra cookies
  #else you have X extra pies and x extra cookies
  #end
  #while remaining servings > 0
   #if statements
  
  # Return items per servings
  # If there are remaining servings
  #   State how many cookies you can make

  if servings >= req_servings
    p "You can make #{servings / req_servings} of #{item}."
  else
    p "You don't have enough to make #{item}."
  end
    
  
end
  

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
 
 
 #Refleciton
# What did you learn about making code readable by working on this challenge?
#I learned the value of naming variables descriptively. Certain variables didn't accurately describe what they represented, which was confusing.

# Did you learn any new methods? What did you learn about them?
#We used the has_key? method, but mostly stuck with the gold standard if/else statement.

# What did you learn about accessing data in hashes? 
#This challenge emphasized the importance of using keys to access values.

# What concepts were solidified when working through this challenge?
 #Accessing hash values, working with conditional statements
 