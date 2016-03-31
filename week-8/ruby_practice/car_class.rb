#Pseudocode
#Create a car class - check
#Allow writers to customize the car's color and model - check
#Allow writers to set the distance they want to drive their car - check
#Allow writers to see and change their speed - check
#Allow writers to accelerate and decelerate with gas/break method(s) - check
#Allow writers to turn right and left - check
#Display total distance driven - check
#Display latest driver action (turning, accelerating, etc...)


# 3. Initial Solution

class Car
attr_accessor :color, :model, :speed, :distance, :pizza

def drive(distance, speed, speed_limit)
  if speed > speed_limit
    puts "You're over the speed limit. You need to slow down!"
  else
    puts "You drive #{distance} in #{distance/speed} hours."
  end
  @distance = distance
  @speed = speed
end
  


def accelerate(speed) #speed can be negative number
  @speed = @speed + speed
  @speed
end


def turn(landmark)
  puts "Will you turn left or right?"
  direction = gets.chomp
  if direction != "left" && direction != "right"
    puts "You spun into the #{landmark}! Your car exploded!"
  else
    puts "You turned #{direction} at the #{landmark}."
  end
end

end   

# 4. Refactored Solution


class Pizza
  attr_accessor :crust, :size, :toppings
  
  def initialize(crust, size, *toppings)
    @crust = crust
    @size = size
    @toppings = toppings.join(", ")
  end
  
end

peeza = Pizza.new("thin", "large", "anchovies", "extra cheese", "olives")
p peeza.toppings

# 1. DRIVER TESTS GO BELOW THIS LINE

# saab = Car.new
# saab.drive(0.25, 23, 25)
# # p saab.speed
# # p saab.distance
# saab.drive(0.25, 23, 25)
# # p saab.distance
# saab.color = "blue"
# saab.model = "Saab"
# # saab.turn("tree")
# saab.pizza = "pepperoni"
# p saab.pizza



# 5. Reflection