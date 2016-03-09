# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of strings, integers, anything
# What is the output? (i.e. What should the code return?)  
# => an array of whatever value occurs the most in the original array

# What are the steps needed to solve the problem?
# => Create a new, empty hash
# => Itirate over original array to load hash with array element as the key and the count of each element as the value
# => Hash is loaded with element and element count
# => Create a new mode_array
# => Use the maximum value method on the hash
# => Find all keys that have that maximum value
# => Load max value keys into a new array


# 1. Initial Solution

def mode(array)
 mode_hash = Hash.new
 	array.each {|k| 
 	mode_hash[k] = array.count(k)
 }
 mode_array = []
 	mode_hash.each {|key, value| 
 	if value == mode_hash.values.max
 	mode_array << key
 	end
 }
 p mode_array
end

mode([1,1,2,2,5,4,3])




# 3. Refactored Solution




# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We took in an array and converted it to hash.  Hash makes sense because then the 
key would be the item in the array and the value would be the number of times it occurs.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Our pseudocode wasn't too technical but it said exactly what we needed to do.

What issues/successes did you run into when translating your pseudocode to code?
When we translated it into code we knew where we were going to go.  When we checked the maximum values of the hash
it was slightly difficult because we had to go back and forth where the syntax goes.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
.each made the most sense for this challenge because we specifically had to look at each value in the array and hash once. Since my partner
knew the .count method, we used each to go over each item, count it and then put that into the hash. In the hash I found the .max method to find the maximum value
for a key in the array, so we used each again to go over each key and test to see if it was == to the max value and put it into our output array.

=end

