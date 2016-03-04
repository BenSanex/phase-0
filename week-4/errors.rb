# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 	errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => expecting an end somewhere in the code
# 5. Where is the error in the code?
# => line 16/17
# 6. Why did the interpreter give you this error?
# => the while loops should have an end, or the method should and the end is for the loop but hard to tell based on indentation.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => NoMethod Error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined variable or method
# 4. Where is the error in the code?
# => line 36
# 5. Why did the interpreter give you this error?
# => south_park hasn't been previously defined

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman'
# 4. Where is the error in the code?
# => cartman()
# 5. Why did the interpreter give you this error?
# => cartman() hasn't been defined as a method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#  cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   70
# 2. What is the type of error message?
#   Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#   wrong number of arguments given, 1 instead of 0
# 4. Where is the error in the code?
#    when calling cartmans_phrase()
# 5. Why did the interpreter give you this error?
#    cartmans_phrase was not defined with any arguments

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# => cartman_says

# 1. What is the line number where the error occurs?
# => 85
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments, 0 instead of 1
# 4. Where is the error in the code?
# => when calling the method cartman_says
# 5. Why did the interpreter give you this error?
# => the method cartman_says requires 1 argument



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# => cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 110
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments, 1 for 2
# 4. Where is the error in the code?
# => when calling cartmans_lie
# 5. Why did the interpreter give you this error?
# => cartmans_lie requires 2 arguments when one was given.

# --- error -------------------------------------------------------

# => 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 125
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into Fixnum
# 4. Where is the error in the code?
# => If you try to multiply a string you have to put the string first
# 5. Why did the interpreter give you this error?
# => because the * method is really .* so the syntax is "string".*(int)
# => you can't multiply a number by a string

# --- error -------------------------------------------------------

#   amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 141
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => you can't divide 20/0
# 5. Why did the interpreter give you this error?
# => if you want to display 20/0 you have to wrap in quotes, otherwise anything /0 is undefined, its math.

# --- error -------------------------------------------------------

#   require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 157
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# => the file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
	
Which error was the most difficult to read?

The first error would have been the most difficult just looking at the error itself.

How did you figure out what the issue with the error was?

I looked at the code and knew the end was missing.

Were you able to determine why each error message happened based on the code? 

When looking at the code I recognized the errors before running the code.

When you encounter errors in your future code, what process will you follow to help you debug?

Luckily looking at the line number points you in the right direction most of the time so I will start there.
If I need more help I can look up the error type.
	
=end





