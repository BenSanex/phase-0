# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: name and integer
# Output: roll, number of sides
# Steps: Create a class die
#Initialize die with number of sides
#Error if sides less than 2
#Create method to return number of sides
#Create method to roll die
#Make object of class die
#Use methods on new object die


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
    	raise ArgumentError.new("No. of sides must be integer greater than 0")
	end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    p rand(1..@sides)
  end
end

six = Die.new(6)
six.roll
six.sides

# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
    	raise ArgumentError.new("No. of sides must be integer greater than 0")
	end
    @sides = sides
  end

  attr_reader :sides

  def roll
    p rand(1..@sides)
  end
end





# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is an error used for invalid arguments, such as having a negative sided die.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I didn't use any new methods, I already used .rand in the previous challenge for sorting groups.

What is a Ruby class?
A class is like a blueprint for objects. It gives objects meaning and methods to call.

Why would you use a Ruby class?
If you are going to be making a lot of objects that are simliar, such as characters in a video game, you could make a class called "PlayerCharacters".

What is the difference between a local variable and an instance variable?
A local variable only exists within a method, but an instance variable can exist througout different methods within an object.

Where can an instance variable be used?
Instance variables can be defined to exist in a class and given value in an object. They exist accross methods so you can reuse a characteristic of an object in different methods for that object.

=end