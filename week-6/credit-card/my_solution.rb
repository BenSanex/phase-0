# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 Credit Card number
# Output: True or False
# Steps: 


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

 def initialize(number)
   @card_number = number
   raise ArgumentError.new("Greater than 16") if @card_number.to_s.length > 16
   raise ArgumentError.new("Less than 16") if @card_number.to_s.length < 16
 end
 
 def check_card
   
   i = 0
   @digit_array = @card_number.to_s.chars 
    @digit_array.map!(&:to_i)
 	    while i < @digit_array.length
        if i % 2 == 0
        @digit_array[i] = @digit_array[i] * 2
        i += 1
        end
        i += 1
      end
 
  	@digit_array = @digit_array.join("").chars
    @digit_array.map!(&:to_i)


  	@valid = @digit_array.inject{|result, number| result + number}
  	@valid % 10 == 0

  end
end


