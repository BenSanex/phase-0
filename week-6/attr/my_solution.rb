#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	def initialize
		@name = "Ben"
	end

	attr_reader :name
end


class Greetings
	def initialize
		@name = NameData.new
	end

	def hello
		puts "Hello #{@name.name}, how wonderful to see you today."
	end
end


=begin
# Reflection
Release 1:
Initialize creates a new instance of the object with a set name, age and occupation.
print_info prints out the age name and occupation separated by blank lines
the #what_is methods just return the age, name or occupation, and the change methods set them to a new value
The change methods modify the value of the instance variable

Release 2 shows that you don't need to define a new method to get the value of one of the instance variables, and you can just use .variable_name to call the value

Release 3 uses the attr_reader and attr_writer methods so you can just call the variable name almost like a method to get or change the value.

What is a reader method?
A reader method allows you to call the variable name like a method and return the value

What is a writer method?
A writer method allows you to call the variable name like a method and assign it a new value.

What do the attr methods do for you?
The attr methods allow you not have to define a new method just for retreiving and reassigning the value of a class variable.	

Should you always use an accessor to cover your bases? Why or why not?
You don't always want to allow write access for a variable, so you don't necessarily always want to use it.

What is confusing to you about these methods?
It was confusing using the method to pass the variable name from the class namedata to the class greetings, but I think I got the hang of it now.

=end
