# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# An integer as an argument
# What is the output? (i.e. What should the code return?)
# The code should return a string as an integer separated by commas
# What are the steps needed to solve the problem?
# 	Define separate_comma as a method that takes one argument
# 	Convert integer to string
# 	Determine length of string
# 	Output string if less than 4 digits
# 	Insert comma every 3 digits and output result

# 1. Initial Solution
def separate_comma(integer)
	integer = integer.to_s
	i = -4
	if integer.length <= 3
		p integer
	else
		while i.abs <= integer.length
			integer.insert(i,",")
			i -= 4
		end
	end
	p integer
end

# 2. Refactored Solution




# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

I broke down the program into each step that I knew I would have to take to convert it to a string and add the commas.
I considered the different looping methods but while or until made the most sense to me.

Was your pseudocode effective in helping you build a successful initial solution?

It helped me keep focused on each step before worrying about the part of the method that I didn't know how to do, which was inserting the commas.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I didn't refactor my code. I learned the insert method when researching my initial solution, and I while looking for alternates I only found longer options or options that required Rails or something called regex.

How did you initially iterate through the data structure?
I .insert()'ed every 4 characters while I was within the .length of the string.

Do you feel your refactored solution is more readable than your initial solution? Why?
I felt my solution was easier to read than any solution I found on the internet.


=end