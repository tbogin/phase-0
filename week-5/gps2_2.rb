# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 

  # [fill in any steps here]
  #convert string into individual items
  #interate each item into keys of a hash value pair
  #set default

  # set default quantity
   # default quantity should be set to 1
# []

  # print the list to the console [can you use one of your other methods here?]
# 

# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name, optional quantity, and existing hash
# steps: push key value pair into existing hash
# output: updated hash

# Method to remove an item from the list
# input: item name, optional quantity, and exisitng hash
# steps: pop key value pair from existing hash
# output: updated hash

# Method to update the quantity of an item
# input: item name, quantity, existing hash
# steps: reassign key to new value
# output: item name, new quantity, hash

# Method to print a list and make it look pretty
# input: hash
# steps: sort by key value pair alphabetically with each key value pair on its own line
# output: items in list form, sort by key

def groceries(items)
  grocery_list = {}
  items = items.split(" ") # e.g. ['apples','bananas','cookies']
  items.each do |i|
     grocery_list[i] = 1
   end
  return grocery_list
end

#my_list = groceries("carrots apples cereal pizza")
#print my_list

p groceries("apples, oranges, milk")

def add_item(list, item, quantity =1)
  list[item] = quantity
end
p add_item(grocery_list, "cookies",3)
#hash = { }
#hash[:a] = 'a'
#hash[:a]

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, new_quantity=1)
  list[item] = new_quantity
end
  
def print_list(grocery_list)
  grocery_list.each do |k,v|
    puts "#{v} #{k}"
  end
end

=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode should be a set of intructions that another coder could follow to produce a working program
What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes contain the k:v pairs needed to have a working grocery list. Arrays are ordered, which makes it easier to find things on the list.
What does a method return?
Code on the last line before end.
What kind of things can you pass into methods as arguments?
Arguments can be anything related to the objects created when you call the method.
How can you pass information between methods?
object.method.method etc...
What concepts were solidified in this challenge, and what concepts are still confusing?
I'm less shaky on the differences between hashes and arrays. But I need to learn more about modifying hashes.
=end