# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: create empty variable
#have a method that takes inputs (item, quantity, )
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: hashes

# Method to add an item to a list
# input: item name and optional quantity
# steps: define add method
#create loop asking if any other items, close when no more items need to be added
# output: updated list at this point

# Method to remove an item from the list
# input: item name
# steps: define subtracting method
#ask if any other items are to be deleted
# output: updated list

# Method to update the quantity of an item
# input: item name , new quantity
# steps: define update method
#ask name, quantity
# output: updated list

# Method to print a list and make it look pretty
# input: 
# steps:
# output:updated list



def grocery_list
  puts "What do you need to buy?"
  list = gets.chomp
  listarray = list.split(" ")
  listhash = Hash.new
  
  listarray.each do |item|
    
    listhash[item] = 1
    
  end
    listhash
end



groceries = grocery_list
p groceries


def add(groceries)
  puts "What else do you need?"
  new_item = gets.chomp
  groceries.merge!({new_item => 1})
  return groceries
end

groceries = add(groceries)
p groceries

def remove(groceries)
  puts "What do you want to get rid of?"
  subtract = gets.chomp
  groceries.delete(subtract)
  return groceries
end

groceries = remove(groceries)
p groceries

def update(groceries)
   puts "What do you need to update?"
   item= gets.chomp
   puts "How many do you need?"
   amount = gets.chomp.to_i
   groceries.merge!({item => amount})
  return groceries
 end
 
 groceries = update(groceries)
 p groceries

 def print(groceries)
  groceries.each do |key, value|
    puts key.to_s + ": " + value.to_s
  end
end

print(groceries)

=begin
What did you learn about pseudocode from working on this challenge?
I need to be more detailed than I was before. It would have been helpful to define
what methods or loops I planned to use.

What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays are much easier to work with but they don't always have room for all the information you need.

What does a method return?
A method will implicitly return whatever the last thing that is evaluated.

What kind of things can you pass into methods as arguments?
Arrays, hashes, strings, basically anything.

How can you pass information between methods?
We stored whatever was returned from our method into a variable, and then passed that in to a new method as an argument.

What concepts were solidified in this challenge, and what concepts are still confusing?
I never really considered the importance of what is being returned before.  I also had very little experience of variable scope
until we started running into local variables that didn't exist outside of the individual methods.

=end