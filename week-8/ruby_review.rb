# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Creates an array of the individual characters of the message
#   decoded_sentence = []
#   cipher = {"e" => "a",   # Needs to be changed into an array, array[x-4] will get the desired output
#             "f" => "b",   # 
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # Iterates over each character in the input array
#     found_match = false  # Changes to true once a matching character is found
#     cipher.each_key do |y| # Iterates over each key in the cipher
#       if x == y  # Checks to see if the key matches the letter it's trying to decode
#         decoded_sentence << cipher[y] # If the key matches the letter then inserst the value into the decoded sentence
#         found_match = true
#         break  # Starts the loop over for the next letter in the sentence
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # Checking to see if the next character is one of the special characters
#         decoded_sentence << " " #Inserts a space if it is
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Creates an array of the numbers 0 - 9 and checks if the character is included in that, unneeded.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # If found_match is false adds the character to the decoded sentence
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #Turns the decoded sentence array into a string
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher =('a'..'z').to_a
  input.each_index do |letter|
    found_match = false
    cipher.each_index do |i|
      if cipher[i] == input[letter]
        decoded_sentence << cipher[i-4]
        found_match = true
      end
    end
    if ['@','#','$','%','^','&','*'].include?(input[letter])
        decoded_sentence << ' '
        found_match = true
    elsif not found_match
        decoded_sentence << input[letter]
    end
  end
    decoded_sentence = decoded_sentence.join("")
end



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
# What concepts did you review or learn in this challenge?
# I have never found a good use for each_index or each_key until now I realize that I need to manipulate the indexes and need to be able to access their values, so it was useful.
# What is still confusing to you about Ruby?
# There are so many methods, I'm not really confused so much as unaware of all of the posibilities. Also I don't know real world applications for this yet.
# What are you going to study to get more prepared for Phase 1?
# I'll probably go back and do more reviews and try to bulk up my cipher so I can input a sentence and make code come out. Maybe I'll turn it into a class.

