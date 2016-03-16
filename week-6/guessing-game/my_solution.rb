# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer as an argument to intialize
# Output: Symbol
# Steps: Initialize and store answer as class variable
	#Create guess method
	#Determine guess value relation to answer value
	#Create solved? method
	#Determine if answer was guessed correctly


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
  	@guess = guess
  	if @guess < @answer
  		:low
  	elsif @guess > @answer
  		:high
  	elsif @guess == @answer
  		:correct
  	end
  end
  
  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end
end

=end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
  	@guess =guess
  	case 
  	when @guess < @answer
  		:low
  	when @guess > @answer
  		:high
  	when @guess == @answer
  		:correct
  	else
  		puts "Error"
  	end
  end
  
  def solved?
  	@guess == @answer
  end
end


# Reflection

#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#Instance variables are like the properties of an object, such as a person's height and weight or the color of a flower.

#When should you use instance variables? What do they do for you?
#Instance variables are tied to an object and can be used across different methods available to that object.

#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#I struggled with the fact that I felt like I should be struggling but it was just a simple if or case statement.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Symbols are unique, you can have 2 different strings say the same thing but 2 symbols that say the same thing are the same symbol. They perform better than strings and can't be manipulated like strings can. They behave more like integers than strings.
#From what I have read, it actually makes more sense to put strings for output and use symbols as identifiers. Since this is a case where you could be using the output in a different place, it could make sense to have the output of your class methods be unique.