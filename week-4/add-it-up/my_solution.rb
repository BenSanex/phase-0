# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Ted Bogin].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:Array
# Output:Total of items in array
# Steps to solve the problem.
# Iterate over array 

# 1. total initial solution
def total(a)
  plus = 0
  for i in 0..(a.length - 1)
  plus = plus + a[i]
  end
  p plus
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:Array
# Output:Sentence
# Steps to solve the problem.
# Iterate over array
# Add a space and next word
# Add period to end

# 5. sentence_maker initial solution

def sentence_maker(array)
  p array.join(' ').capitalize << "."
end

sentence_maker(["Challenge","complete"])


# 6. sentence_maker refactored solution

