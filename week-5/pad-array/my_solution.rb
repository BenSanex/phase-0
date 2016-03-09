# Pad an Array

# I worked on this challenge [with: Jack Thatcher]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min_size, value
# What is the output? (i.e. What should the code return?)
# array
# What are the steps needed to solve the problem?

=begin
if the array length is >= min_size
  END
else Loop until array.length == min_size
  Add value to end of array
  

  
=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    until array.length == min_size
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  newArray = Array.new(array)
  counter = 0
    if newArray.length >= min_size
      return newArray
    else
      while newArray.length < min_size
        newArray.push(value)
        p "COUNT"
      end
      return newArray
    end
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    until array.length == min_size
      array << value
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  newArray = Array.new(array)
    if newArray.length >= min_size
      return newArray
    else
      while newArray.length < min_size
        newArray << value
      end
      return newArray
    end
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
I felt our pseudocode was better than I've done in the past because we had a very
clear outline of how we were going to develop each method.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Since we broke down exactly what we were going to use, all we had to do was turn it into ruby syntax.
We had trouble when we tried to create a new array, we initially just said newarray = array, but we needed to
say newarray = Array.new(array), which made a significant difference to the original.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  We were successful quite quickly, our problems all arose from assigning the new array to = the old array.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Instead of using push, we used <<, but we felt our code was pretty clean as it was.

How readable is your solution? Did you and your pair choose descriptive variable names?
newArray should be clear that it is not the original array. That was the only new variable we needed to declare.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods modify the original array or object, non-destructive have no effect on the original.

=end



