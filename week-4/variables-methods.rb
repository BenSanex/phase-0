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
