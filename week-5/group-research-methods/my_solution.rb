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