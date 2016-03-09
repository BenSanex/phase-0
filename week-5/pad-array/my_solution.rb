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