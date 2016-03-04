puts "Hello please give me your First Name:"
first_name = gets.chomp
puts "Last Name:"
last_name = gets.chomp
puts "Middle Name"
middle_name = gets.chomp

puts "Thanks, " + first_name +" " + middle_name +" " + last_name +"!"


puts "Whats your favorite number?"
favorite = gets.chomp.to_i
bigger = favorite + 1
puts bigger.to_s + " is an even bigger, better number!"

=begin
https://github.com/BenSanex/phase-0/blob/master/week-4/math/my_solution.rb
https://github.com/BenSanex/phase-0/blob/master/week-4/address/my_solution.rb

How do you define a local variable?

A local variable is a variable that is specifically used in one instance or part of a whole program, such as part of a method.

How do you define a method?

	A method is an action that you can take on a variable.
What is the difference between a local variable and a method?

A method is the action that you are taking, the variable is the thing you are taking the action on.

How do you run a ruby program from the command line?

`ruby file_name.rb`

How do you run an RSpec file from the command line?

	`rspec file_name_spec.rb`

What was confusing about this material? What made sense?
	
	I got confused between p and puts, and I knew the difference and I knew
	 that I should know the difference but it still tripped me up in one of
	  my methods.
=end


