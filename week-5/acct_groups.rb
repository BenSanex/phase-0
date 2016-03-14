#Pseudocode
=begin

Define method that takes one argument as an array
Determine if groups of 5 would leave any extras
Generate random number and take that array item out of array and place in a group
Repeat until group is full
Repeat until array is empty
Output groups

=end
=begin
#Initial Solution
def grouper(names_list)
	grp = Random.new
	output_array = []
	if names_list.length % 5 == 0
		#groups of 5
		while names_list.length > 0 do
			while output_array.length < 5 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
	elsif names_list.length % 5 == 1
		# groups of 5 and two groups of 3
		until names_list.length <= 6 do
			while output_array.length < 5 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
		while names_list.length > 0 && names_list.length <=6
			while output_array.length < 3 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
	elsif names_list.length % 5 == 2
		# grouops of 5 and one of 4, one of 3
		until names_list.length <= 7 do
			while output_array.length < 5 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
		while names_list.length > 3 && names_list.length <=7
			while output_array.length < 4 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
		p names_list
	elsif names_list.length % 5 == 3
		# groups of 5 and one group of 3
		until names_list.length <= 3 do
			while output_array.length < 5 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
		while names_list.length > 0 && names_list.length <=3
			while output_array.length < 3 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
	elsif names_list.length % 5 == 4
		# groups of 5 and one group of 4
		until names_list.length <= 4 do
			while output_array.length < 5 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
		while names_list.length > 0 && names_list.length <=4
			while output_array.length < 4 do
				i = grp.rand(0...names_list.length)
				output_array << names_list[i]
				names_list.delete_at(i)
			end
		p output_array
		output_array = []
		end
	end
end
=end
#Refactored (and greatly shortened)
def grouper(names_list)
	grp = Random.new
	output_array = []
	
	 iterate = Proc.new do |max|
		while output_array.length < max do
			i = grp.rand(0...names_list.length)
			output_array << names_list[i]
			names_list.delete_at(i)
		end
		p output_array
		output_array = []
	end

	if names_list.length % 5 == 0
		#groups of 5
		while names_list.length > 0 do
			iterate.call 5
		end
	elsif names_list.length % 5 == 1
		# groups of 5 and two groups of 3
		until names_list.length <= 6 do
			iterate.call 5
		end
		while names_list.length > 0 && names_list.length <=6
			iterate.call 3
		end
	elsif names_list.length % 5 == 2
		# grouops of 5 and one of 4, one of 3
		until names_list.length <= 7 do
			iterate.call 5
		end
		while names_list.length > 3 && names_list.length <=7
			iterate.call 4
		end
		p names_list
	elsif names_list.length % 5 == 3
		# groups of 5 and one group of 3
		until names_list.length <= 3 do
			iterate.call 5
		end
		while names_list.length > 0 && names_list.length <=3
			iterate.call 3
		end
	elsif names_list.length % 5 == 4
		# groups of 5 and one group of 4
		until names_list.length <= 4 do
			iterate.call 5
		end
		while names_list.length > 0 && names_list.length <=4
			iterate.call 4
		end
	end
end


grouper(["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"])

#Reflection
=begin

What was the most interesting and most difficult part of this challenge?
I haven't gone through and done any additional challenges, because I don't know how to create new variable names to store the Arrays in with each new array.
Other than that it took me a long time to come up with how I wanted to output the arrays.  It also was a challenge coming up with a method to randomly select
different names out of the group. My solution originally was much more complicated with whether I would choose groups of 3,4, or 5.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes. I spent most of my time mentally writing pseudocode for this problem before I settled on a solution.

Was your approach for automating this task a good solution? What could have made it even better?
The only way I could figure to improve would be to let the program itself tell if I needed to make smaller groups instead of pre figuring out all the possibilities and hard coding it in.

What data structure did you decide to store the accountability groups in and why?
I used arrays because they're easy to work with for a list of strings.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned about the idea of procs, because I tried to make a new method called iterate, but then the variables wouldn't transfer over, so I had to learn how to make a proc.
I am slightly disappointed I didn't teach myself any specific enumerables because I coulnd't come up with a solution that needed anything more complex.

=end
