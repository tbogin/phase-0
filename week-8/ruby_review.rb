# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
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

  # input.each do |x| # #each is iterating through each character in coded message, set to downcase and split by whitespace into an array
    # found_match = false  #found_match is defaulted as false - it's only true if conditions are met
    # cipher.each_key do |y| # each_key iterates through the keys within the cipher hash
      # if x == y  # This is comparing characters within the coded message argument, and keys within the cipher hash
        # decoded_sentence << cipher[y] #values corresponding to cipher keys pushed into decoded sentence array if the cipher key matches the character within the decoded sentence
        # found_match = true
        # break  #ieration breaks here in order to move onto the next character within the decoded message argument
      # elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        # decoded_sentence << " " #add a space if the character within the decoded message is one of the above symbols
      #   found_match = true
      #   break
      # elsif (0..9).to_a.include?(x) #" (0..9).to_a " returns an array of 1-9  
  #       decoded_sentence << x
  #       found_match = true
  #       break
  #     end
  #   end
  #   if not found_match  # What is this looking for?
  #     decoded_sentence << x
  #   end
  # end
  # decoded_sentence = decoded_sentence.join("")
  #This message is returning the decoded message in sentence form after joining the array items from iteration into a full statement.
# end

# Your Refactored Solution

class Decoder
  def initialize(letter_shift, alphabet = ('A'..'Z').to_a.join.downcase)
    @cipher = alphabet.chars.rotate(letter_shift).join
    @alphabet = ('A'..'Z').to_a.join.downcase
  end
  
  def decrypt(message)
    decode_array = []
    input = message.downcase.split("")
    input.each do |character|
      if character == "@" || character == "#" || character == "$" || character == "%"|| character == "^" || character == "&"|| character =="*"
          decode_array << " "
      elsif (0..9).to_a.include?(character)
          decode_array << character
      else
          decode_array << character.tr(@cipher, @alphabet)
      end
    end
    decode_array.join("")
  end
  
end 

c = Decoder.new(4, ('A'..'Z').to_a.join.downcase)
p c.decrypt("m^aerx%e&gsoi!")


#Pseudocode
#Class that decrypts the message
#initialize method that takes alphabet, and a variable that shifts alphabet's letters

# Driver Test Code:
p c.decrypt("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p c.decrypt("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p c.decrypt("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p c.decrypt("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p c.decrypt("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")


#Reflection
# What concepts did you review or learn in this challenge?
  #I learned about shifting and rotating arrays of strings with the tr and rotate methods.
# What is still confusing to you about Ruby?
  #Ruby has so many methods, so becoming acquainted with enough to approach a new challenge without doing lots of research first seems likt it'll take more time.
# What are you going to study to get more prepared for Phase 1?
 #I'll try to knock out all the Ruby review challenges this week and early next week, and review more JS. 

