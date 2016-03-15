#6.5: Nested Data Structures
#Ted Bogin and Victoria Solozrano
#1 hour spent on this challenge

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array =
  
[
  [1,2], #0, 
  [
    "inner",
    [
      "eagle",
      "par",
      [
        "FORE",
        "hook"
        
        ]
    ] #end of "eagle"
  ] #end of "inner" array [1]
] #end of entire array


# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: 
  {inner: #value of outer, key to almost
  {"almost" => #value of inner, key to a the third hash below
  {3 => "congrats!"} #value of almost
  } #end of almost, the value of inner
  } #end of inner, the value of outer
  } #end of hash

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: 
  ["array", #key for following hash
     {hash: "finished"}
  ] #end of array - value of array:
  } #end of hash

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add_five(number_array)
  number_array.map! do |items|
    if items.is_a?(Array)
      items.map! {|number| number + 5}
    else
      items + 5
    end
end
number_array
end
p add_five(number_array)


# def add_five(number_array)
#   number_array.map! do |outer_layer|
#     if outer_layer.is_a?(Array)
#     outer_layer.map! do |inner_layer|
#       inner_layer + 5
#     end
#       else
#       outer_layer + 5
#     end
#   end
#   return number_array
# end


# Bonus:

startup_names =
  
["bit",
  
  ["find", "fast",
  
  ["optimize", "scope"]
    ]
      ]

=begin
first elements: bit
second elements: find, fast
third elements: optimize, scope
=end

#iterate array like the number_array, add "ly" if array item is a string
def add_ly(string_array)
  string_array.map! do |first_elements|
    if first_elements.is_a?(Array)
      first_elements.map! do |second_elements|
        
        if second_elements.is_a?(Array)
          second_elements.map! do |third_elements|
            third_elements + "ly"
          end
        else
          second_elements + "ly"
        end
      end
    else
      first_elements + "ly"
    end
  end
string_array
end
p add_ly(startup_names)

#Reflection

# What are some general rules you can apply to nested arrays?
	#Make sure you access them using the correct index number, or hash key if one of the array items is a hash

# What are some ways you can iterate over nested arrays?
	#Iterate in layers, with nested conditional statements/enumerable methods.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
	#We stuck with map! and with if/else statements. Enumerable#map! allowed us to iterate over data structures.
	#The only method new to me was .is_a? which we used to identity arrays/hashes within larger arrays/hashes