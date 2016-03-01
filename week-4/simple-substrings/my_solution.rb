# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def welcome
  puts "Where do you live?"
  address = gets.chomp
  
  if address == "CA"
    puts "Welcome to California."
  else 
    puts "You should move to California."
  end
end

welcome 