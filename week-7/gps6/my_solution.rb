# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Checks same directory or stated directory for file
# Gives the ability to use that file
  require_relative 'state_data'



class VirusPredictor
# Declares instance variables when class item is initialized
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread with class variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Based on population_density predicts for number of deaths for a given state and prints to console
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 200..100000
      number_of_deaths = (@population * 0.4).floor
      when 150...200
      number_of_deaths = (@population * 0.3).floor
      when 100...150
      number_of_deaths = (@population * 0.2).floor
      when 50...100
      number_of_deaths = (@population * 0.1).floor
      else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Predicts how many months will take based on populuation density for a given state and outputs second half of sentence to console
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    case @population_density 
      when 200..10000
      speed = 0.5
      when 150...200
      speed = 1
      when 100...150
      speed = 1.5
      when 50...100
      speed = 2
      else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, info|
  state = VirusPredictor.new(state, info[:population_density], info[:population])
state.virus_effects
end

#=======================================================================
# Reflection Section


# What are the differences between the two different hash syntaxes shown in the state_data file?
# The rocket syntax is better for strings as keys whereas the colon syntax makes the key a symbol.
# What does require_relative do? How is it different from require?
# require_relative looks for a matching file within the directory, require looks through the ruby source directories.
# What are some ways to iterate through a hash?
# We iterated through using each, and you have to call it using key, value.  It will not work if you do .each |key|
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were repeated many times
# What concept did you most solidify in this challenge?
# Structuring class methods, and the scope of variables making it so you don't have to pass arguments into your class methods.