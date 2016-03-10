i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
#sort, filter, find, ---> include?

#Iterate through array
# => look for items containing letter "a"
#Push relevant array items into new array
#Return new array
=begin
def my_array_finding_method(array, letter = "a")
  letter_array = []
  array.each do |i| 
  letter_array.push(i) if i.include? letter
  end
  letter_array
end
=end
def my_array_finding_method(array, letter)
  letter_array = []
  array.each do |word|
    letter_array.push(word.to_s) if word.to_s.include? letter.to_s.downcase
  end
  return letter_array
end
p my_array_finding_method(i_want_pets, "a")


=begin
Identify and describe the Ruby method you implemented
  I used the .each method, along with the .include? method in order to locate an individual letter in the array items

Teach your accountability group how to use the methods
  obect.each do |placeholder variable(s)| 
                  code block 
            end -- this enumerable method iterates through all items of an object, manipulating them according to your specifications
            
  The .include? method within the code block checks if items include a string/subtring, integer, etc...
  
Share any tricks you used to find and decipher the Ruby Docs
  RubyDocs for Newbs was very helpful. Check the index of methods on the right of the page, checking any that may just work
=end

#find value, find key by value, ---> any?
#Return an array of key(s) from the pets array corresponding with the age argument

def my_hash_finding_method(hash, number)
  pets_array = []
  hash.any? do |key, value|
    pets_array << key if value == number
  end
  pets_array
end

p my_hash_finding_method(my_family_pets_ages, 12) #should return George

=begin
Identify and describe the Ruby method you implemented
  I used the .any? enumerable method in order to iterate through the hash and check for hash values equaling my number argument
  I also used push (<<) to send all relevant hash keys into my return array

Teach your accountability group how to use the methods
  .any? is similar to .each. You set up placeholder variables in the block, and then specify the conditions that will make your items pass
=end