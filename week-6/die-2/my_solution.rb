# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(labels)
  	if labels.length < 1
    	raise ArgumentError.new("No. of sides must be integer greater than 0")
	end
  	@labels = labels
  end

  def sides
  	@sides = @labels.length
  end

  def roll
  	p @labels.sample
  end
end



# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

This die class requires an argument, which is an array, as opposed to the last one, with took an argument of the number of sides.  The logic is basically the same, you're just working with Arrays as opposed to ranges.

What does this exercise teach you about making code that is easily changeable or modifiable? 

The simpler you keep your code, the easier it is to adapt to other things. When you make code complicated, its usually because you've developed it for a very specific application.

What new methods did you learn when working on this challenge, if any?

I learned the .sample method, which takes an argument and returns that number of random members of an array.

What concepts about classes were you able to solidify in this challenge?

It was a good reminder on the basics of the syntax and how to write methods for the class.


=end