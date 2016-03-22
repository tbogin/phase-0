# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #like require method, but pulls from a different file
#Constants such as STATE_DATA have a global scope - can be called from anywhere. Constants can't be overwritten.

class VirusPredictor

#initializes instance variables for state, population, and density - will be recognized in following methods
  def initialize(state_of_origin, population_density, population) 
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Returns below methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  # private #makes code below accessible only to you; won't show up if called outside class
  
#Conditional for number of deaths by population density
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    
    counter_a = 200
    counter_b = 0.4
    
    while @population_density < 200
      number_of_deaths = (@population * counter_b).floor
      counter_a -= 50
      counter_b -= 0.1
    end
    
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#Increments by population density, with speed starting at 0
  
  
  
  
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      counter_a = 200
      speed += 2.0
        
    while @population_density < 200
      speed -= 0.5
      counter_a -= 50
    end
    
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, value|
  VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end

#=======================================================================
# Reflection Section

#
    # What are the differences between the two different hash syntaxes shown in the state_data file?
      #The hashy hash uses strings for keys, whereas the inner hashes use symbols.
    # What does require_relative do? How is it different from require?
      # Require relative is similar to the require method, except it can pull from other files.
    # What are some ways to iterate through a hash?
      #Iterate through outer keys and values, then iterate through inner keys and values.
    # When refactoring virus_effects, what stood out to you about the variables, if anything?
      #I had no problems with the variables. The conditional statements weren't dry enough.
    # What concept did you most solidify in this challenge?
      #Accessing values within a 2D hash
 